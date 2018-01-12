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
        
        let id_proprio : String = Compte.getCompteCourant()
        
        let mp : ModulePersistance = ModulePersistance()
        
        let proprietaire_courant : Proprietaire = mp.getProprietaire(id_proprio: id_proprio)
        
        et_nom.text = proprietaire_courant.nom
        
        et_email.text = proprietaire_courant.email
        
        et_tel.text = proprietaire_courant.tel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func modifierVotreCompte(_ sender: UIButton) {
        
        if (verification()) {
        
            
            let nom_bis : String = et_nom.text ?? ""
            let email_bis : String = et_email.text ?? ""
            let tel_bis : String = et_tel.text ?? ""
            
            let id_proprio : String = Compte.getCompteCourant()
            
            let mp : ModulePersistance = ModulePersistance()
            
            var proprietaire_courant : Proprietaire = mp.getProprietaire(id_proprio: id_proprio)
            
            proprietaire_courant.nom = nom_bis
            
            proprietaire_courant.email = email_bis
            
            proprietaire_courant.tel = tel_bis
            
            mp.updateProprietaire(proprietaire: proprietaire_courant)
            
        } else {
            
        }
    }
    
    func verification() -> Bool {
        var check : Bool = true
        
        if(et_nom.text == "") {
            check = false
            et_nom.backgroundColor = UIColor.red
        } else {
            et_nom.backgroundColor = UIColor.white
        }
        if(et_email.text == "") {
            check = false
            et_email.backgroundColor = UIColor.red
        }else {
            et_email.backgroundColor = UIColor.white
        }
        if(et_tel.text == "") {
            check = false
            et_tel.backgroundColor = UIColor.red
        }else {
            et_tel.backgroundColor = UIColor.white
        }
        
        return check
    }

}
