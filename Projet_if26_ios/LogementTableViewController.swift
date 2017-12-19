//
//  TestTableViewController.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 08/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
///Users/if26-grp2/Desktop/Projet_if26_ios 2/Projet_if26_ios/Base.lproj/Main.storyboard

import UIKit

class LogementTableViewController: UITableViewController {

    let identifiantModuleCelule = "celluleModule"
    
    let mp : ModulePersistance = ModulePersistance()
    
    var liste : [Logement]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        liste = mp.listLogement()
        for l in liste {
            print(l.affiche())
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return liste.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifiantModuleCelule, for: indexPath)

        let l : Logement = liste[indexPath.row]
        
        cell.textLabel?.text = "\(l.label)"
        cell.detailTextLabel?.text = "Prix : \(l.prix)€ Nb pieces : \(l.nb_pieces)"
        return cell
    }
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)!")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifiantModuleCelule, for: indexPath)
        
       performSegue(withIdentifier: "showDetailsLogement", sender: cell)
    }*/

        override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "showDetailsLogement") {
            // initialize new view controller and cast it as your view controller
            let viewController = segue.destination as! DetailsViewController
            
            guard let cell=sender as? UITableViewCell else {
                print("Ce n'est pas une cellule")
                return
            }
            
            if let indexPath = self.tableView.indexPath(for: cell) {
                viewController.logement = liste[indexPath.row]
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
