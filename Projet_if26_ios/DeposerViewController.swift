//
//  DeposerViewController.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 11/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import UIKit

class DeposerViewController: UIViewController {

    let mp : ModulePersistance = ModulePersistance()
    
    @IBOutlet weak var label_annonce: UITextField!
    @IBOutlet weak var nb_pieces_annonce: UITextField!
    @IBOutlet weak var adresse_annonce: UITextField!
    @IBOutlet weak var ville_annonce: UITextField!
    @IBOutlet weak var prix_annonce: UITextField!
    @IBOutlet weak var description_annonce: UITextView!
    @IBOutlet weak var bt_valider: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func validerAnnonce(_ sender: UIButton) {
        
        //Vérification
        
        //Prix nb_pieces lat lng id_proprio
        let prix:String = (prix_annonce.text)!
        let nb_pieces: String = ( nb_pieces_annonce.text)!
        let logement : Logement = Logement(label: (label_annonce.text)!, description: (description_annonce.text)!, prix:Int(prix)!, nb_pieces:Int(nb_pieces)!, ville: (ville_annonce.text)!, adresse: (adresse_annonce.text)!, lat: 48.302485, lng: 4.054159, id_proprio: "1")
        
       
        mp.insertLogement(l: logement)
        let proprietaire : Proprietaire = Proprietaire (id_proprio: "1", nom: "WIEM JELLAD", email: "wiem.jellad@utt.fr", tel: "0725346851")
        mp.insertProprietaire(P: proprietaire)        
    }
    

}
