//
//  ViewController.swift
//  Teasure Hunt
//
//  Created by A.M. Student on 11/22/19.
//  Copyright © 2019 A.M. Student. All rights reserved.
//

import UIKit
import CoreLocation
import AVFoundation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    //Var and Funcs
    var locationManager: CLLocationManager?
    
    //IBActions and IBOutlets
    @IBAction func closeMapButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func mapChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 || sender.selectedSegmentIndex == 1 || sender.selectedSegmentIndex == 2 {
          mapView.isHidden = false
          if sender.selectedSegmentIndex == 0 {
            mapView.mapType = .standard
          } else if sender.selectedSegmentIndex == 1 {
            mapView.mapType = .satellite
          } else if sender.selectedSegmentIndex == 2 {
            mapView.mapType = .hybrid
            }
        } else {
          mapView.isHidden = true
        }
    }
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        locationManager?.requestAlwaysAuthorization()
        
    }


}

//class cachesLocations: NSObject {
//
//    let location: CLLocation
//      let name: String
//
//      init(latitude: Double, longitude: Double, name: String) {
//        location = CLLocation(latitude: latitude, longitude:   longitude)
//        self.name = name
//
//      }
//
//    }
//
//    extension cachesLocations: MKAnnotation {
//      var coordinate: CLLocationCoordinate2D {
//        get {
//          return location.coordinate
//        }
//      }
//      var title: String? {
//        get {
//          return name
//        }
//      }
//}

