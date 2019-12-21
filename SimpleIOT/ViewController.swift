//
//  ViewController.swift
//  SimpleIOT
//
//  Created by Saswata Mukherjee on 21/12/19.
//  Copyright © 2019 Saswata Mukherjee. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {

    @IBAction func onViewTapped(_ sender: Any) {
        if view.backgroundColor == UIColor.red{
            led(state: "ON")
            view.backgroundColor = UIColor.green
        }
        else{
            led(state: "OFF")
            view.backgroundColor = UIColor.red
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        led(state: "OFF")
        view.backgroundColor = UIColor.red

        // Do any additional setup after loading the view.
    }

    func led(state: String){
        
        let ref = Database.database().reference()
        let post: [String: String] = ["state": state]
        ref.child("led").setValue(post)

    }
}

