//
//  ViewController.swift
//  Maps
//
//  Created by Nikita Lavrihins on 28/03/17.
//  Copyright © 2017 lavr. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //define vars
        let latitude: CLLocationDegrees = 56.912735
        
        let longitude: CLLocationDegrees = 24.112181
        
        let latDelta : CLLocationDegrees = 0.05
        
        let lonDelta : CLLocationDegrees = 0.05
        
        //add zoom
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        //set coordinates
        let coordinates: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        //set coordinates region
        let region: MKCoordinateRegion = MKCoordinateRegion(center: coordinates, span: span)

        //show on map changes
        map.setRegion(region, animated: true
        
        )
        
        //add annotation/marker
        let annotation = MKPointAnnotation()
        
        annotation.title = "Nikita L"
        
        annotation.subtitle = "Im leaving here"
        
        annotation.coordinate = coordinates
        
        //add annotation/marker on map
        map.addAnnotation(annotation)
        
        // "Ja ilgi spiežās un rue, tad izsaucās šī funkcija
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longpress(gestureRecognizer:)))
        
        //laiks cik ilgi jātur
        uilpgr.minimumPressDuration = 2
        
        //uzliekam updeitu uz mapes
        map.addGestureRecognizer(uilpgr)
        
    }

    func longpress(gestureRecognizer: UILongPressGestureRecognizer) {
        
        let touchPoint = gestureRecognizer.location(in: self.map)
        let coordinate = map.convert(touchPoint, toCoordinateFrom: self.map)
        
        let annotation = MKPointAnnotation()
        
        annotation.title = "place";
        
        annotation.subtitle = "Hmm, nice place"
        
        annotation.coordinate = coordinate
        
        map.addAnnotation(annotation)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

