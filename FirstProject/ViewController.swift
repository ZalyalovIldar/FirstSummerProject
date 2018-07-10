//
//  ViewController.swift
//  FirstProject
//
//  Created by Ildar Zalyalov on 06.07.2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

protocol MyProtocol {
    func someFunc()
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        nameLabel.text = "Ildar"
        ageLabel.text = "22"
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.detailTextLabel?.text = "Detail Text"
        
        return cell
    }
    
}

