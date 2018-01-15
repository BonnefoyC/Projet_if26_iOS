//
//  DeposerViewController.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 11/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import UIKit
import MapKit

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
        
        if (verification()) {
        
            let location : CLLocation = getLatLng(ville: (ville_annonce.text)!, adresse: (adresse_annonce.text)!)
            let prix:String = (prix_annonce.text)!
            let nb_pieces: String = ( nb_pieces_annonce.text)!
            let logement : Logement = Logement(label: (label_annonce.text)!, description: (description_annonce.text)!, prix:Int(prix)!, nb_pieces:Int(nb_pieces)!, ville: (ville_annonce.text)!, adresse: (adresse_annonce.text)!, lat: location.coordinate.latitude, lng: location.coordinate.longitude, id_proprio: Compte.getCompteCourant())
        
            mp.insertLogement(l: logement)
            
            let message = "Votre bien a été publié."
            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            self.present(alert, animated: true)
            
            // duration in seconds
            let duration: Double = 5
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + duration) {
                alert.dismiss(animated: true)
            }
            
            label_annonce.isEnabled = false
            nb_pieces_annonce.isEnabled = false
            adresse_annonce.isEnabled = false
            ville_annonce.isEnabled = false
            prix_annonce.isEnabled = false
            description_annonce.isEditable = false
            bt_valider.isEnabled = false
            
        } else {
            let message = "Tous les champs sont obligatoires."
            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            self.present(alert, animated: true)
            
            // duration in seconds
            let duration: Double = 5
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + duration) {
                alert.dismiss(animated: true)
            }
        }
    }
    
    func verification() -> Bool {
        
        var check : Bool = true
        
        if(label_annonce.text == "") {
            check = false
            label_annonce.backgroundColor = UIColor.red
        } else {
            label_annonce.backgroundColor = UIColor.white
        }
        if(nb_pieces_annonce.text == "") {
            check = false
            nb_pieces_annonce.backgroundColor = UIColor.red
        }else {
            nb_pieces_annonce.backgroundColor = UIColor.white
        }
        if(adresse_annonce.text == "") {
            check = false
            adresse_annonce.backgroundColor = UIColor.red
        }else {
            adresse_annonce.backgroundColor = UIColor.white
        }
        
        if(ville_annonce.text == "") {
            check = false
            ville_annonce.backgroundColor = UIColor.red
        }else {
            ville_annonce.backgroundColor = UIColor.white
        }
        if(prix_annonce.text == "") {
            check = false
            prix_annonce.backgroundColor = UIColor.red
        }else {
            prix_annonce.backgroundColor = UIColor.white
        }
        if(description_annonce.text == "") {
            check = false
            description_annonce.backgroundColor = UIColor.red
        }else {
            description_annonce.backgroundColor = UIColor.white
        }
        
        return check
    }
    
    private func getLatLng(ville : String, adresse : String) -> CLLocation{
        var coords = [
            ["lat" : 48.281573, "lng" : 4.070907],
            ["lat" : 48.281202, "lng" : 4.070343],
            ["lat" : 48.281770, "lng" : 4.071395],
            ["lat" : 48.283187, "lng" : 4.073025],
            ["lat" : 48.282676, "lng" : 4.074047],
            ["lat" : 48.282639, "lng" : 4.075072]
        ]
        
        let n = arc4random_uniform(5).trailingZeroBitCount % 5
        
        let lat = coords[n]["lat"]
        let lng = coords[n]["lng"]
        
        let location : CLLocation = CLLocation(latitude: lat!, longitude: lng!)
        
        return location
    }
    

}
