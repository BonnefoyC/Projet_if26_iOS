//
//  Authentification.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 12/01/2018.
//  Copyright © 2018 if26-grp2. All rights reserved.
//

import UIKit

class Authentification: UIViewController {

    @IBOutlet weak var et_mdp: UITextField!
    @IBOutlet weak var et_email: UITextField!
    
    let mp : ModulePersistance = ModulePersistance()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let logements : [Logement] = Logement.getinitiallogement()
        for logement in logements {
            mp.insertLogement(l: logement)
            //mp.insertProprietaire(P: proprietaire)
        }
        
        let proprietaires : [Proprietaire] = Proprietaire.getinitialproprietaire()
        for proprietaire in proprietaires {
            mp.insertProprietaire(P: proprietaire)
        }
        
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
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        var check : Bool = true
        if (identifier == "auth") {
            
            let email : String! = et_email.text
            let mdp : String! = et_mdp.text
            
            let mp : ModulePersistance = ModulePersistance()
            
            let id_proprio : String = mp.getProprietaire(email : email, pass : mdp)
            
            print(id_proprio)
            
            if ( id_proprio == "-1") {
                check = false
                print("mauvais mdp")
            } else {
                Compte.setCompteCourant(p: mp.getProprietaire(id_proprio: id_proprio))
                print("bon mdp")
            }
        }
        return check
    }
    
}
