//
//  ViewController.swift
//  RememberUserDetails
//
//  Created by Aman Sharma on 17/06/21.
//  Copyright © 2021 Aman Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var output: UILabel!
    @IBAction func link(_ sender: Any) {
        UserDefaults.standard.set(name.text, forKey: "Name")
        UserDefaults.standard.set(phone.text, forKey:"Phone Number")
        output.text = "Your details have been saved "
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nameObj = UserDefaults.standard.object(forKey:"Name")
        let phoneObj = UserDefaults.standard.object(forKey:"Phone Number")
        if let fixName = nameObj as? String {
            print(fixName)
            name.text = fixName
            
        }
        if let fixPhone = phoneObj as? String {
            print(fixPhone)
            phone.text = fixPhone
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}





