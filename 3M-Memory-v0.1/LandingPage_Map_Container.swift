//
//  LandingPage_Map_Container.swift
//  3M-Memory-v0.1
//
//  Created by Wong kim kwok on 6/9/2016.
//  Copyright © 2016 CPA. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

class LandingPage_Map_Container: UIViewController {
    
    // You don't need to modify the default init(nibName:bundle:) method.
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.cameraWithLatitude(22.18, longitude: 114.10, zoom: 1.0)
        let mapView = GMSMapView.mapWithFrame(CGRect.zero, camera: camera)
        mapView.myLocationEnabled = true
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 22.18, longitude: 114.10)
        marker.title = "Hong Kong"
        marker.snippet = "Hong Kong"
        marker.map = mapView
        
        
        //Creates a marker to japan.35.689614,139.691585
        let des_marker = GMSMarker()
        des_marker.position = CLLocationCoordinate2D(latitude: 33.68, longitude: 139.69)
        des_marker.title = "Osaka"
        des_marker.snippet = "Japan"
        des_marker.map = mapView
        
        let path = GMSMutablePath()
        path.addLatitude(22.18, longitude: 114.10) // Sydney
        path.addLatitude(33.68, longitude: 139.69) // Fiji
        
        
        let polyline = GMSPolyline(path: path)
        polyline.strokeColor = UIColor.redColor()
        polyline.strokeWidth = 5.0
        polyline.map = mapView
        
        self.view = mapView
        
    }
    
}