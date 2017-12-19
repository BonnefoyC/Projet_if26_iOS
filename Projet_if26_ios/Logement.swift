//
//  Logement.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 08/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import Foundation
import MapKit

public class Logement : NSObject, MKAnnotation {
    
    public var coordinate: CLLocationCoordinate2D
    
    var label : String
    var logement_description : String
    var prix : Int
    var nb_pieces : Int
    var ville : String
    var adresse : String
    var lat : Double
    var lng : Double
    var id_proprio : String
    
    init(label : String, description : String, prix : Int, nb_pieces : Int, ville : String, adresse : String, lat : Double, lng : Double, id_proprio : String ){
        self.label = label
        self.logement_description = description
        self.prix = prix
        self.nb_pieces = nb_pieces
        self.ville = ville
        self.adresse = adresse
        self.lat = lat
        self.lng = lng
        self.id_proprio = id_proprio
        
        self.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        
        super.init()
    }
    
    public var subtitle: String? {
        return label
    }
    
    func affiche () -> String {
        return "\(self.label)(\(self.prix), \(self.nb_pieces), \(self.lat), \(self.lng), \(self.logement_description))"
    }
}

