//
//  ModifierCompteViewController.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 19/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import UIKit

class ModifierCompteViewController: UIViewController {

    @IBOutlet weak var et_email: UITextField!
    @IBOutlet weak var et_nom: UITextField!
    @IBOutlet weak var et_tel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let proprietaire_courant : Proprietaire = Compte.getCompteCourant()
        
        et_nom.text = proprietaire_courant.nom
        
        et_email.text = proprietaire_courant.email
        
        et_tel.text = proprietaire_courant.tel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func modifierVotreCompte(_ sender: UIButton) {
        
        //Vérification
        
        let nom_bis : String = et_nom.text ?? ""
        let email_bis : String = et_email.text ?? ""
        let tel_bis : String = et_tel.text ?? ""
        
        Compte.modifierCompte(nom : nom_bis, email : email_bis, tel : tel_bis)
        
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
