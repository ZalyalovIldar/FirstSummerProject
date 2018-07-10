//
//  MyTableViewController.swift
//  FirstProject
//
//  Created by Ildar Zalyalov on 09.07.2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var arrayOfObjects = [MyUser]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        arrayOfObjects.append(MyUser(name: "some name", age: 123))
        arrayOfObjects.append(MyUser(name: "some name", age: 123))
        arrayOfObjects.append(MyUser(name: "some name", age: 123))
        arrayOfObjects.append(MyUser(name: "some name", age: 123))
        arrayOfObjects.append(MyUser(name: "some name", age: 123))
        arrayOfObjects.append(MyUser(name: "some name", age: 123))
        arrayOfObjects.append(MyUser(name: "some name", age: 123))
    }
    
   override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
    if (UserDefaults.standard.string(forKey: "key") != nil) {
            //sort
            tableView.reloadData()
        }
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfObjects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! CustomCell
        
        let model = arrayOfObjects[indexPath.row]
        cell.descriptionLabel.text = model.name
        
        return cell
    }
 

    //MARK: - UITableView Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        let model = arrayOfObjects[indexPath.row]
        performSegue(withIdentifier: "detail", sender: model)
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(section)"
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detail", let model = sender as? String {
            
            let destinationVC = segue.destination as! DetailViewController
            
            destinationVC.text = model
        }
        
    }
    
    @IBAction func organizeButtonPressed(_ sender: Any) {
        
        
    }
    
}
