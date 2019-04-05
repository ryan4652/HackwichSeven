//
//  ViewController.swift
//  HackwichSeven
//
//  Created by Ryan B Domingo on 4/4/19.
//  Copyright © 2019 Ryan B Domingo. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation



class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
   
    
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
centerMapOnLocation(location: initialLocation)
        
let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude:21.36470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
let schoolOne = Restaurant(title: "UH West Oahu", type: "School", coordinate: CLLocationCoordinate2D(latitude: 21.3552, longitude: -158.0561))
        mapView.addAnnotation(schoolOne)
        
let airportOne = Restaurant(title: "Kalaeloa Airport", type: "Airport", coordinate: CLLocationCoordinate2D(latitude: 21.3099, longitude: -158.0709))
        mapView.addAnnotation(airportOne)
    
let golfCourseOne = Restaurant(title: "Kapolei Golf Course", type: "Golf Course", coordinate: CLLocationCoordinate2D(latitude: 21.3444, longitude: -158.0605))
        mapView.addAnnotation(golfCourseOne)
        
let mallOne = Restaurant(title: "Kamakana Ali'i", type: "Mall", coordinate: CLLocationCoordinate2D(latitude: 21.3337, longitude: -158.0524))
        mapView.addAnnotation(mallOne)
        
let parkOne = Restaurant(title: "Kapolei Regional Park", type: "Park", coordinate: CLLocationCoordinate2D(latitude: 21.3356, longitude: -158.0779))
        mapView.addAnnotation(parkOne)

        
        
    }
    
    func centerMapOnLocation(location:CLLocation) {
        
        let coordinateRegion = MKCoordinateRegion.init(center: location.coordinate,latitudinalMeters: regionRadius,longitudinalMeters: regionRadius);mapView.setRegion(coordinateRegion, animated: true)
        
    }


}

