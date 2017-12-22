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
    
    static func getinitialproprietaire() -> [Proprietaire] {
        var liste : [Proprietaire] = [Proprietaire (id_proprio: "1", nom: "Marc Lemercier", email:"marc.lemercier@utt.fr", tel: "0748545874"),
        Proprietaire (id_proprio: "2", nom: "Céline Georges", email: "celine.georges@gmail.com", tel: "0787952103"),
        Proprietaire (id_proprio: "3", nom: "Philippe Roux", email: "philippe.roux@live.fr", tel:   "0787858545"),
        Proprietaire (id_proprio: "4", nom: "Sandra joly", email: "sandra.joly@hotmail.fr", tel: "0787000102"),
        Proprietaire (id_proprio: "5", nom: "Michel Laurant", email: "michel.laurant@gmail.com", tel: "078792222"),
        Proprietaire (id_proprio: "6", nom: "Marie Girard", email: "marie.girard@gmail.com", tel: "078778945"),
        Proprietaire (id_proprio: "7", nom: "Clement Bonnefoy", email: "clement.bonnefoy@utt.fr", tel: "0787742603"),
        Proprietaire (id_proprio: "8", nom: "Wiem Jellad", email: "wiem.Jellad@utt.fr", tel: "0787159357"),
        Proprietaire (id_proprio: "9", nom: "Michel Laurant", email: "michel.laurant@gmail.com", tel: "0787952222"),
        Proprietaire (id_proprio: "10", nom: "Clement Lambert", email: "clement.lambert@gmail.com", tel: "0787954561"),
        Proprietaire (id_proprio: "11", nom: "CHLOé Robert", email: "chloé.robert@gmail.com", tel: "0787952103"),
        Proprietaire (id_proprio: "12", nom: "JEAN-MARC NIGRO", email: "jean-marc.nigro@hotmail.fr", tel: "0787945685"),
        Proprietaire (id_proprio: "13", nom: "NATHALIE Chatelet", email: "nathalie.chatelet@gmail.com",tel:"0787952105"),
        Proprietaire (id_proprio: "14", nom: "PAUL Carquin", email: "paul.carquin@gmail.com", tel: "0787957896"),
        Proprietaire (id_proprio: "15", nom: "LAURA Lemercier", email: "laura.lemercier@gmail.com", tel: "0787952222"),
        Proprietaire (id_proprio: "16", nom: "Aline Roux", email: "aline.roux@gmail.com", tel: "0787444111"),
        Proprietaire (id_proprio: "17", nom: "ODE Pakiry", email: "ode.pakiry@gmail.com", tel: "0787953333"),
        Proprietaire (id_proprio: "18", nom: "RONY Pakiry", email: "rony.pakiry@gmail.com", tel: "0787999945"),
        Proprietaire (id_proprio: "18", nom: "CELINE miron", email: "celine.miron@gmail.com", tel: "0787947520")
        ]
        return liste
    }
    
}
