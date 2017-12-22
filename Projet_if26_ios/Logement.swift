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
    func getinitiallogement()-> [Logement]{
        var list: [Logement] = [Logement(label:"Loue studio spacieux et lumineux",description:"grands placards cuisine équipée, salle de bain avec sèche serviette et WC séparé.", prix:380, nb_pieces:1,ville:"Troyes",adresse:"4 Rue Brunneval",lat:48.299830, lng:4.093458, id_proprio:"1"),
                                Logement(label:"Studio meublé",description:"de 28 m² dans construction neuve, proche centre-ville, proche arrêt de bus, Cuisine équipée (four, plaque de cuisson, table, chaises, placard penderie).Disponible toute de suite.", prix:450, nb_pieces:1,ville:"10000 Troyes",adresse:"12 Rue Godard Pillaveine",lat:48.298459, lng:4.040587, id_proprio:"2"),
                                Logement(label:"Belle pièce à vivre",description:"Avec 2 doubles fenêtres, Cuisine ouverte aménagée avec plaques électriques, réfrigérateur, lave-vaisselle, éléments de rangements. Libre au 31/01/2018 ", prix:460, nb_pieces:1,ville:"10000 Troyes",adresse:"22 rue Georges Clemenceau",lat:48.282355, lng:4.11269, id_proprio:"3"),
                                Logement(label:"Grand Studio",description:"Dans un petit immeuble ancien, au premier étage sans ascenseur, grand studio refait à neuf, comprenant: spacieuse pièce avec cuisine ouverte, salle d’eau avec Wc.  Petite cour. Rue calme.", prix:700, nb_pieces:0,ville:"10000Troyes",adresse:"9 Rue Jean Neveu",lat:48.274929, lng:4.089682, id_proprio:"4"),
                                Logement(label:"Joli et lumineux appartement",description:"Ce studio est très lumineux et cosy. Il se trouve au 7ème étage avec ascenseur dans une résidence sécurisée (place de parking disponible). ", prix:750, nb_pieces:3,ville:"10000 Troyes",adresse:"4 Rue Sancey",lat:48.271159, lng:4.120581, id_proprio:"5"),
                                Logement(label:"F1 rénové",description:"Une chambre, pièce de vie avec grand espace cuisine tout équipé, verrière.. Salle de bain ( baignoire),toilette séparé. Deuxième étage. Cave.  Libre toute de suite.", prix:500, nb_pieces:0,ville:"10000 Troyes",adresse:"8 Avenue Général de Gaulle",lat:48.282698, lng:4.043333, id_proprio:"6"),
                                Logement(label:"Studio rénové pour 2 personnes",description:"Cet appartement est situé au 2ème étage sans ascenseur d’un immeuble du quartier de la Bastille. Cet appartement de style contemporain a été récemment entièrement rénové. ", prix:630, nb_pieces:3,ville:"10000 Troyes",adresse:"9 Rue Michel Ange",lat:48.281784, lng:4.117491, id_proprio:"7"),
                                Logement(label:"Beau F4",description:"Appartement lumineux proche centre-ville, commerces, écoles, troisième étage sans ascenseur. Entrée, cuisine indépendante, aménagée et équipée (hotte, four plaque vitro), 2 chambres séparées par salle de bain (baignoire) et WC, séjour, salon. Sol carrelé, volets roulants et fenêtres double vitrage, placards.", prix:630, nb_pieces:3,ville:"10000 Troyes",adresse:"7 Rue Preize",lat:48.269902, lng:4.087450, id_proprio:"8"),
                                Logement(label:"Grande maison",description:"DANSUN QUARTIER RESIDENTIEL BELLE MAISON DE 117M² SUR JOLI TERRAIN SANS VIS A VIS DE 400M². SALON, CUISINE OUVERTE ENTIEREMENT EQUIPEE, BELLE PIECE PRINCIPALE DONNANT SUR JARDIN. A L’ETAGE, GRAND PALLIER, DRESSING, DEUX CHAMBRES, UN BUREAU, SALLE DE DOUCHE, WC.", prix:755, nb_pieces:3,ville:"10000 Troyes",adresse:"11 Rue de l’indépendance",lat:48.284481, lng:4.125554, id_proprio:"9"),
                                Logement(label:"Beau T2 centre-ville",description:"Beau T2 dans copropriété close au 2ème étage avec ascenseur comprenant une superficie de 36 m2. Entrée avec placard. Coin cuisine kitchenette. Chambre et  Pièce à vivre, Salle de bain, WC, Chauffage électrique individuel et eau chaude par cumulus .", prix:410, nb_pieces:2,ville:"10000 Troyes",adresse:"26 Rue de la fédération",lat:48.306637, lng:4.103582, id_proprio:"10"),
                                Logement(label:"Pavillon 4 pièces",description:"Proche de tous commerces, dans un environnement calme, maison de 74 m² sur sous-sol complet, composé d'une entrée, séjour double, cuisine, 2 chambres, salle de bains, WC, rangements. Garage. Terrasse. Terrain clos 600 m². Chauffage électrique.", prix:800, nb_pieces:3,ville:"10120 Saint André les Vergers",adresse:"13 Rue Baltet",lat:48.290306, lng:4.128129, id_proprio:"11"),
                                Logement(label:"Grand Studio",description:"Dans un petit immeuble ancien, au premier étage sans ascenseur, grand studio refait à neuf, comprenant: spacieuse pièce avec cuisine ouverte, salle d’eau avec Wc.  Petite cour. Rue calme.", prix:700, nb_pieces:0,ville:"10000 Troyes",adresse:"9 Rue Jean Neveu",lat:48.305723, lng:4.096715, id_proprio:"4"),
                                Logement(label:"Maisonnette avec terrace ",description:"Une maisonnette indépendante F1 de 35 m2 meublé ou non à votre choix tout confort:1chambre avec télévision, petite cuisine équipée, salle d'eau, toilette. Une terrasse privée et place de parking dans cour fermée.", prix:500, nb_pieces:3,ville:"10000 Troyes",adresse:"9 Rue Agenor Cortier",lat:48.303362, lng:4.040306, id_proprio:"12"),
                                Logement(label:"Studio Meublé",description:"Studio fonctionnel, dans copropriété entièrement rénovée de 4 logements Au RDC Sécurisé par interphone. Très calme", prix:330, nb_pieces:1,ville:"10000 Troyes",adresse:"9 Rue Notre Dame des Prés",lat:48.2808552, lng:4.133012, id_proprio:"13"),
                                Logement(label:"Agréable Studio",description:"À louer un joli T1 dans la commune de Saint André les Vergers au sein de la résidence Les Tuileries à la limite de Troyes.", prix:390, nb_pieces:1,ville:"Saint andré Les Vergers",adresse:"5 Rue de la Paix",lat:48.265285, lng:4.109823, id_proprio:"13"),
                                Logement(label:"Grand Studio",description:"À louer un joli T1 dans la commune de Saint André les Vergers au sein de la résidence Les Tuileries à la limite de Troyes.", prix:390, nb_pieces:1,ville:"Saint andré Les Vergers",adresse:"5 Rue de la Paix",lat:48.308457, lng:4.147527, id_proprio:"13"),
                                Logement(label:"Beau T2",description:"Loue T2, deux pièces et cuisine séparée. Le logement est idéalement situé rue Emile Zola, mais l'environnement est néanmoins très calme, la copropriété donnant sur une cour intérieure retirée de la rue.", prix:500, nb_pieces:2,ville:"10000 Troyes",adresse:"12 Rue Emile Zola",lat:48.276021, lng:4.191473, id_proprio:"15"),
                                Logement(label:"Joli F2 ",description:"Appartement F2 60 m2 lumineux avec cave dans petite copropriété au 1er étage dans quartier calme et agréable, Ravalement et isolation récente avec fenêtres double vitrage.Entrée avec placard, cuisine aménagée et équipée (four, plaque cuisson, hotte, frigo, lave-linge), salon, 2 chambres avec placards intégrés. Salle de bain aménagée avec meuble vasque et baignoire, WC, ", prix:450, nb_pieces:1,ville:"10000 Troyes",adresse:"2 Rue Edouard Herriot",lat:48.332213, lng:4.126625, id_proprio:"16")
                                ]
        return list
    }
    
}

