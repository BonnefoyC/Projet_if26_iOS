//
//  Compte.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 19/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import Foundation

public class Compte {
    
    private static var current : Proprietaire = Proprietaire(id_proprio : "0", nom : "Clément BONNEFOY", email : "clement.bonnefoy@utt.fr", tel : "04253515958", pass : "")
    
    public static func getCompteCourant() -> Proprietaire {
        return Compte.current
    }
    public static func setCompteCourant(p : Proprietaire) {
        current = p
    }
    
    public static func modifierCompte(nom  : String, email : String, tel : String) {
        Compte.current = Proprietaire(id_proprio: Compte.current.id_proprio, nom: nom, email: email, tel: tel, pass : Compte.current.pass)
        
        let mp : ModulePersistance = ModulePersistance()
        
        mp.updateProprietaire(proprietaire: Compte.current)
    }
    
}
