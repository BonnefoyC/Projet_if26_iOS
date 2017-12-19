//
//  MapViewController.swift
//  Projet_if26_ios
//
//  Created by if26-grp2 on 15/12/2017.
//  Copyright © 2017 if26-grp2. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let mp : ModulePersistance = ModulePersistance()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let initialLocation = CLLocation(latitude : 48.295485, longitude : 4.073030)
        
        centerMapOnLocation(location: initialLocation)
        
        let liste_logement : [Logement] = mp.listLogement()
        
        for l in liste_logement {
            mapView.addAnnotation(l)
        }
        
        // Do any additional setup after loading the view.
    }
    
    let regionRadius : CLLocationDistance = 20000

    func centerMapOnLocation(location : CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
