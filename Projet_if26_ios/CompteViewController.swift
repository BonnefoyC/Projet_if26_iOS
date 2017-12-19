//
//  CompteViewController.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 19/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import UIKit

class CompteViewController: UIViewController {

    @IBOutlet weak var tel_compte: UILabel!
    @IBOutlet weak var email_compte: UILabel!
    @IBOutlet weak var nom_compte: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let proprietaire_courant : Proprietaire = Compte.getCompteCourant()
        
        nom_compte.text = "Nom : \(proprietaire_courant.nom)"
        email_compte.text = "Email : \(proprietaire_courant.email)"
        tel_compte.text = "Tel : \(proprietaire_courant.tel)"
        
        
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

}
