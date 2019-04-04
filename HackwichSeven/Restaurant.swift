//
//  Restaurant.swift
//  HackwichSeven
//
//  Created by Ryan B Domingo on 4/4/19.
//  Copyright © 2019 Ryan B Domingo. All rights reserved.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {

 
    let restaurantTitle: String?
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
  
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
    super.init()
        
        
    }
    
    
    var subtitle: String? {return restaurantTitle
    }
    
    
}
