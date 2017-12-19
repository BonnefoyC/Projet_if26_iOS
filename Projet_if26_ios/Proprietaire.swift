//
//  Proprietaire.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 11/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import Foundation

public class Proprietaire {
    var id_proprio : String
    var nom : String
    var email : String
    var tel : String
    
    init(id_proprio : String, nom : String, email : String, tel : String) {
        self.id_proprio = id_proprio
        self.nom = nom
        self.email = email
        self.tel = tel
    }
    
    func affiche () -> String {
        return "\(self.id_proprio) \(self.nom)"
    }
}
