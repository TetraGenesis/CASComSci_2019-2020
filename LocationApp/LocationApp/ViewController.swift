//
//  ViewController.swift
//  LocationApp
//
//  Created by Ezra Barber on 4/18/20.
//  Copyright © 2020 Ezra Barber. All rights reserved.
//

import Foundation
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
       // Ask for Authorisation from the User.
       self.locationManager.requestAlwaysAuthorization()

       // For use in foreground
       self.locationManager.requestWhenInUseAuthorization()

       if CLLocationManager.locationServicesEnabled() {
           locationManager.delegate = self
           locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
           locationManager.startUpdatingLocation()
       }
        
    }
    @IBAction func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        print("locations = \(locValue.latitude) \(locValue.longitude)")
    }

    

}

