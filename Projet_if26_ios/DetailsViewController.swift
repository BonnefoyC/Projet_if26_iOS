//
//  DetailsViewController.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 12/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionannonce: UITextView!
    @IBOutlet weak var nombredepiecesannonce: UILabel!
    @IBOutlet weak var adresseannonce: UILabel!
    @IBOutlet weak var villeannonce: UILabel!
    @IBOutlet weak var prixannonce: UILabel!
    @IBOutlet weak var labelannonce: UILabel!
    
    var logement : Logement?
    var id : Int?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = logement?.label
        
        labelannonce.text = logement?.label
        prixannonce.text = "Prix : \(logement!.prix)€"
        villeannonce.text = logement?.ville
        adresseannonce.text = logement?.adresse
        nombredepiecesannonce.text = "Nombre de pieces : \(logement!.nb_pieces)"
        descriptionannonce.text = "\(logement!.logement_description)"
        
        let nom_image = "logement\(id!).jpg"
        
        let imageNamed : UIImage? = UIImage(named : nom_image)
        
        image.image = imageNamed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "contactProprietaire") {

            let viewController = segue.destination as! ContactViewController
            
            viewController.id_proprio = self.logement?.id_proprio
            
            
        }
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
