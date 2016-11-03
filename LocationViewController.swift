//
//  LocationViewController.swift
//  Where2Go
//
//  Created by 王晶crystal on 2016/11/2.
//  Copyright © 2016年 Jing Wang. All rights reserved.
//

import UIKit
import MapKit
import GoogleMaps
import CoreLocation

class LocationViewController: UIViewController,CLLocationManagerDelegate {
    
    let locationManager:CLLocationManager = CLLocationManager()
    var lon: Double!
    var lat: Double!
   
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }

   
    
    override func viewDidLoad() {
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 100
        locationManager.requestAlwaysAuthorization()
        if (CLLocationManager.locationServicesEnabled())
        {
            locationManager.startUpdatingLocation()
            print("start")
        }
        
        GMSServices.provideAPIKey("AIzaSyCl-R2dlMm5otYkMFtyCH5O85wJvWqZbOk")
        
        let camera = GMSCameraPosition.camera(withLatitude: 51.892132,
                                              longitude: -8.493200,
                                              zoom: 16 )
        let mapView = GMSMapView.map(withFrame: CGRect.zero , camera: camera)
        mapView.isMyLocationEnabled = true
        self.view = mapView
        
        let currentLoaction = CLLocationCoordinate2DMake(51.892132, -8.493200)
        let marker = GMSMarker()
        marker.position = currentLoaction
        marker.title = "UCC"
        marker.map = mapView
        
        let currentLoaction1 = CLLocationCoordinate2DMake(51.889932, -8.493200)
        let marker1 = GMSMarker()
        marker1.position = currentLoaction1
        marker1.title = "UCC1"
        marker1.map = mapView
        
        
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let currLocation:CLLocation = locations.last!
        lon = currLocation.coordinate.longitude
        lat = currLocation.coordinate.latitude
        print(lon,lat)
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
