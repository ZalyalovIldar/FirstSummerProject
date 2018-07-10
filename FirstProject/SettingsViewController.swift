//
//  SettingsViewController.swift
//  FirstProject
//
//  Created by Ildar Zalyalov on 10.07.2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var organizeSwitch: UISwitch!
    @IBOutlet weak var pushSwitch: UISwitch!
    @IBOutlet weak var someSettingSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        organizeSwitch.setOn(UserDefaults.standard.bool(forKey: "organizeSwitch"), animated: true)
        pushSwitch.setOn(UserDefaults.standard.bool(forKey: "pushSwitch"), animated: true)
        someSettingSwitch.setOn(UserDefaults.standard.bool(forKey: "someSettingSwitch"), animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    @IBAction func organizeSwitched(_ sender: UISwitch) {
        
        UserDefaults.standard.set(sender.isOn, forKey: "organizeSwitch")
    }
    
    @IBAction func pushSettingsSwitched(_ sender: UISwitch) {
         UserDefaults.standard.set(sender.isOn, forKey: "pushSwitch")
    }
    
    @IBAction func someSettingsSwitched(_ sender: UISwitch) {
         UserDefaults.standard.set(sender.isOn, forKey: "someSettingSwitch")
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
