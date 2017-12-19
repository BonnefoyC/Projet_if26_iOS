//
//  ContactViewController.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 15/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var labelContact: UILabel!
    
    @IBOutlet weak var et_nom: UITextField!
    
    @IBOutlet weak var et_message: UITextView!
    @IBOutlet weak var et_mail: UITextField!
    
    var id_proprio : String?
    
    var mp : ModulePersistance = ModulePersistance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let proprietaire : Proprietaire = mp.getProprietaire(id_proprio: id_proprio!)
        
        print(proprietaire.affiche())
        
        labelContact.text = "Envoye un email à \"\(proprietaire.nom)\"."
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClick(_ sender: UIButton) {
        
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
