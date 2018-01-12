//
//  ModifierMotDePasseController.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 12/01/2018.
//  Copyright © 2018 if26-grp2. All rights reserved.
//

import UIKit

class ModifierMotDePasseController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var et_nouveau_mdp: UITextField!
    @IBOutlet weak var et_ancien_mdp: UITextField!
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

    @IBAction func clic(_ sender: Any) {
        
        let ancien_mdp : String! = et_ancien_mdp.text
        let nouveau_mdp : String! = et_nouveau_mdp.text
        
        if (ancien_mdp == nouveau_mdp){
            label.text = "Les mots de passe sont identiques"
    
        } else {
            
            let id_proprio : String = Compte.getCompteCourant()
            
            let mp : ModulePersistance = ModulePersistance()
            
            let proprietaire_courant : Proprietaire = mp.getProprietaire(id_proprio: id_proprio)
            
            proprietaire_courant.pass = nouveau_mdp
                       
            mp.updateProprietaire(proprietaire: proprietaire_courant)
            
            label.text = "Le mot de passe est modifié"
        }
        
    }
}
