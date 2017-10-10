//
//  HomePageViewController.swift
//  Groupay
//
//  Created by Luis E. Arevalo on 10/6/17.
//  Copyright © 2017 pen15club. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class HomePageViewController: UIViewController {
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager: CLLocationManager!
    var currentLocation: CLLocation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        centerMapOnLocation(location: initialLocation)
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
