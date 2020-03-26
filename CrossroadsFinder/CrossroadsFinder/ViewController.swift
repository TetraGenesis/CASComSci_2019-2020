//
//  ViewController.swift
//  CrossroadsFinder
//
//  Created by Ezra Barber on 3/23/20.
//  Copyright © 2020 Ezra Barber. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var crossroadsLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    let CROSSROADS_LAT = 34.0240892
    let CROSSROADS_LONG = -118.4747321
    let seattleLat = 47.6062
    let seattleLong = 122.3321
    let beijingLat = 39.9042
    let beijingLong = 116.4074
    let newYorkLat = 40.7128
    let newYorkLong = 74.0060
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        let crossroadsPoint = MKMapPoint(CLLocationCoordinate2D(latitude: CROSSROADS_LAT, longitude: CROSSROADS_LONG))
        let size = MKMapSize(width: 1000, height: 1000)
        let rect = MKMapRect(origin: crossroadsPoint, size: size)
        mapView.setRegion(MKCoordinateRegion(rect), animated: true)
        // Do any additional setup after loading the view.
    }
    @IBAction func zoomOut(_ sender: Any) {
        let factor = 2.0
        zoom(factor)
    }
    @IBAction func zoomIn(_ sender: Any) {
        let factor = 0.5
        zoom(factor)
    }
    
    
    @IBAction func moveSeattle(_ sender: Any) {
        let region = mapView.region
        let span = region.span
        let newLat = seattleLat
        let newLong = seattleLong
        let newSpan = MKCoordinateSpan(latitudeDelta: newLat, longitudeDelta: newLong)
        let newRegion = MKCoordinateRegion(center: region.center, span: newSpan)
        mapView.setRegion(newRegion, animated: true)
    }
    func moveBeijing(_ sender: Any) {
        let region = mapView.region
        let span = region.span
        let newLat = beijingLat
        let newLong = beijingLong
        let newSpan = MKCoordinateSpan(latitudeDelta: newLat, longitudeDelta: newLong)
        let newRegion = MKCoordinateRegion(center: region.center, span: newSpan)
        mapView.setRegion(newRegion, animated: true)
    }
    func moveNY(_ sender: Any) {
        let region = mapView.region
        let span = region.span
        let newLat = beijingLat
        let newLong = beijingLong
        let newSpan = MKCoordinateSpan(latitudeDelta: newLat, longitudeDelta: newLong)
        let newRegion = MKCoordinateRegion(center: region.center, span: newSpan)
        mapView.setRegion(newRegion, animated: true)
    }
    
    
    func zoom(_ zoomFactor: Double) {
        let region = mapView.region
        let span = region.span
        let newLat = span.latitudeDelta * zoomFactor
        let newLong = span.longitudeDelta * zoomFactor
        let newSpan = MKCoordinateSpan(latitudeDelta: newLat, longitudeDelta: newLong)
        let newRegion = MKCoordinateRegion(center: region.center, span: newSpan)
        mapView.setRegion(newRegion, animated: true)
    }
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        let rect = mapView.visibleMapRect
        let crossroadsLoc = CLLocationCoordinate2D(latitude: CROSSROADS_LAT, longitude: CROSSROADS_LONG)
        let crossroadsPoint = MKMapPoint(crossroadsLoc)
        if rect.contains(crossroadsPoint){
            crossroadsLabel.text = "There's Crossroads!"
        }
        else {
            crossroadsLabel.text = "Oh no, where's Crossroads?"
        }
    }
}
