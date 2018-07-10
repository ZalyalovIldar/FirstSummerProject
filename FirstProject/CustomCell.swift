//
//  CustomCell.swift
//  FirstProject
//
//  Created by Ildar Zalyalov on 10.07.2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        firstImageView.image = #imageLiteral(resourceName: "image1")
        secondImageView.image = #imageLiteral(resourceName: "image1")
    }

}
