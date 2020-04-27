//
//  ViewController.swift
//  SegueLearn
//
//  Created by Macintosh HD on 4/27/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func register(_ sender: UIButton) {
        performSegue(withIdentifier: "toSegue", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier{
            if identifier == "toSegue"{
                print("trying to reach page")
                if let destination = segue.destination as? Segue{
                    destination.userInfo = "Giorgi"
                }
            }
        }
    }
    

}

