//
//  ModulePersistance.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 11/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import Foundation
import SQLite



public class ModulePersistance {
    var database : Connection!
    let logementsTable = Table("logements")
    let label = Expression<String>("label")
    let def_description = Expression<String>("description")
    let nb_pieces = Expression<Int>("nb_pieces")
    let prix = Expression<Int>("prix")
    let ville = Expression<String>("ville")
    let adresse = Expression<String>("adresse")
    let lat = Expression<Double>("lat")
    let lng = Expression<Double>("lng")
    let id_proprio = Expression<String>("id_proprio")
    
    let proprioTable = Table("Proprietaire")
    let id = Expression<String>("id_proprio")
    let nom = Expression<String>("nom")
    let email = Expression<String>("email")
    let tel = Expression<String>("tel")
    
    init() {
        do {
            let documentDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            let fileUrl = documentDirectory.appendingPathComponent("LeBonLogement").appendingPathExtension("sqlite3")
            let database = try Connection(fileUrl.path)
            self.database = database
            
            let createTableLogement = self.logementsTable.create { (table) in
                table.column(self.label, primaryKey: true)
                table.column(self.def_description)
                table.column(self.nb_pieces)
                table.column(self.prix)
                table.column(self.ville)
                table.column(self.adresse)
                table.column(self.lat)
                table.column(self.lng)
                table.column(self.id_proprio)
            }
            try self.database.run(createTableLogement)
            
            print("Create Table Logement OK")
            
            let createTableProprio = self.proprioTable.create { (table) in
                table.column(self.id, primaryKey: true)
                table.column(self.nom)
                table.column(self.email)
                table.column(self.tel)
            }
            try self.database.run(createTableProprio)
            
            print("Create Table Proprietaire OK")
                       
        } catch {
            print(error)
        }
    }
    
    func insertLogement(l : Logement) {
        print("Insérer un logement :")
        
        let insertLogement = self.logementsTable.insert(self.label <- l.label, self.def_description <- l.logement_description, self.nb_pieces <- l.nb_pieces, self.prix <- l.prix, self.ville <- l.ville, self.adresse <- l.adresse, self.lat <- l.lat, self.lng <- l.lng, self.id_proprio <- l.id_proprio)
        
        do {
            try self.database.run(insertLogement)
            print("Logement inserted")
        } catch {
            print(error)
        }

    }
    
    func listLogement() -> [Logement] {
        var liste : [Logement] = []
        
        do {
            let logements = try self.database.prepare(self.logementsTable)
            for l in logements {
                liste.append(Logement(label : l[self.label], description : l[self.def_description], prix : l[self.prix], nb_pieces : l[self.nb_pieces], ville : l[self.ville], adresse : l[self.adresse], lat : l[self.lat], lng : l[self.lng], id_proprio : l[self.id_proprio]))
            }
        } catch {
            print(error)
        }
        
        return liste

    }
    func insertProprietaire (P: Proprietaire) {
        print("Insérer un proprietaire :")
    let insertProprietaire = self.proprioTable.insert(self.id <- P.id_proprio, self.self.nom <- P.nom,  self.email <- P.email,  self.tel <- P.tel)
        do {
            try self.database.run(insertProprietaire)
            print("Proprietaire inserted")
        } catch {
            print(error)
        }
    }
    
    func getProprietaire(id_proprio : String) -> Proprietaire{
        
        var proprietaire : Proprietaire! = nil
        
        do {

            let liste = try self.database.prepare(self.proprioTable)
            for p in liste {
                if(p[self.id] == id_proprio) {
                    proprietaire = Proprietaire(id_proprio: p[self.id], nom: p[self.nom], email: p[self.email], tel: p[self.tel])
                }
            }
            
        } catch {
            print(error)
        }
        return proprietaire
    }
    
    func updateProprietaire(proprietaire : Proprietaire) {
        
        let current_proprio = self.proprioTable.filter(self.id == proprietaire.id_proprio)
        
        do {
            try self.database.run(current_proprio.update(nom <- nom.replace("", with: proprietaire.nom), email <- email.replace("", with: proprietaire.email), tel <- tel.replace("", with: proprietaire.nom)))
        } catch {
            print(error)
        }
    }
}
