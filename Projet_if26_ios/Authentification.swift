//
//  Authentification.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 12/01/2018.
//  Copyright © 2018 if26-grp2. All rights reserved.
//

import UIKit

class Authentification: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "auth") {
            // initialize new view controller and cast it as your view controller
            
            print("ok")
            
            
            
            return;
            
        }
    }
}
