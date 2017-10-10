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

class MyLocation: NSObject, MKAnnotation {
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D){
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        
        super.init()
    }
    
    convenience init(_ coordinate: CLLocationCoordinate2D){
        self.init(title: "You are here", subtitle: "At this location", coordinate: coordinate)
    }
}

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView! {
        didSet {
            let initialLocation = CLLocation(latitude: 37.3352, longitude: -121.8811) // SJSU
            let initialAnnotation = MyLocation(initialLocation.coordinate)
            centerMapOnLocation(initialLocation)
            mapView.addAnnotation(initialAnnotation)
        }
    }
    
    var locationManager: CLLocationManager!
    var currentLocation: CLLocation?
    let regionRadius: CLLocationDistance = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func centerMapOnLocation(_ location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
