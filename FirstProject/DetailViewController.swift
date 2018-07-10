//
//  DetailViewController.swift
//  FirstProject
//
//  Created by Ildar Zalyalov on 09.07.2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var text: String!
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel?.text = text
    }

}
