//
//  RealMapView.swift
//  handsOn
//
//  Created by Scholar on 7/19/23.
//

import MapKit
import SwiftUI
struct RealMapView: UIViewRepresentable {
    
// telling the computer were focusing on LA
  let cityCoordinate = CLLocationCoordinate2D(latitude: 34.04332221148269, longitude: -118.24483500000001)
    
    // how zoomed in
  let citySpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
  // Change these coordinates to change the pin!
    
  let locationCoordinate = CLLocationCoordinate2D(latitude: 34.04500854551121, longitude: -118.24309649778391)
  let locationCoordinate2 = CLLocationCoordinate2D(latitude: 34.04226305539039, longitude: -118.2454882489919)
    let locationCoordinate3 = CLLocationCoordinate2D(latitude: 34.04732116552822, longitude: -118.44843938465395)
    let locationCoordinate4 = CLLocationCoordinate2D(latitude: 34.04332221148269, longitude: -118.24483500000001)
    let locationCoordinate5 =
        CLLocationCoordinate2D(latitude: 34.1005628, longitude: -118.3327632)
    let locationCoordinate6 =
    CLLocationCoordinate2D(latitude: 34.0159126, longitude: -118.4853832)
    let locationCoordinate7 =
    CLLocationCoordinate2D(latitude: 34.0277418, longitude: -118.2473946)
    let locationCoordinate8 =
    CLLocationCoordinate2D(latitude: 34.0079733, longitude: -118.2422964)
    let locationCoordinate9 =
    CLLocationCoordinate2D(latitude: 34.0369152, longitude: -118.2656762)
    let locationCoordinate10 =
    CLLocationCoordinate2D(latitude: 34.0453256, longitude: -118.2450323)
    let locationCoordinate11 =
    CLLocationCoordinate2D(latitude: 34.0497663, longitude: -118.2911503)
    let locationCoordinate12 =
    CLLocationCoordinate2D(latitude: 34.0252623, longitude: -118.4728412)
    
    
  func makeUIView(context: Context) -> MKMapView {
    let mapView = MKMapView()
    mapView.delegate = context.coordinator
      
    let annotation = MKPointAnnotation()
    annotation.coordinate = locationCoordinate
    let annotation2 = MKPointAnnotation()
    annotation2.coordinate = locationCoordinate2
      let annotation3 = MKPointAnnotation()
      annotation3.coordinate = locationCoordinate3
      let annotation4 = MKPointAnnotation()
      annotation4.coordinate = locationCoordinate4
      let annotation5 = MKPointAnnotation()
      annotation5.coordinate = locationCoordinate5
      let annotation6 = MKPointAnnotation()
      annotation6.coordinate = locationCoordinate6
      let annotation7 = MKPointAnnotation()
      annotation7.coordinate = locationCoordinate7
      let annotation8 = MKPointAnnotation()
      annotation8.coordinate = locationCoordinate8
      let annotation9 = MKPointAnnotation()
      annotation9.coordinate = locationCoordinate9
      let annotation10 = MKPointAnnotation()
      annotation10.coordinate = locationCoordinate10
      let annotation11 = MKPointAnnotation()
      annotation11.coordinate = locationCoordinate11
      let annotation12 = MKPointAnnotation()
      annotation12.coordinate = locationCoordinate12
      
      
    // change the String to the place you want to be labeled
    annotation.title = "Downtown Women’s Center "
    annotation2.title = "The Midnight Mission"
      annotation3.title = "Reading to Kids"
      annotation4.title = "Union Rescue Mission"
      annotation5.title = "Food on Foot"
      annotation6.title = "Heal the Bay"
      annotation7.title = "American Red Cross"
      annotation8.title = "Los Angeles Regional Food Bank"
      annotation9.title = "California Hospital Medical Center"
      annotation10.title = "Los Angeles Mission"
      annotation11.title = "Los Angeles Police Department"
      annotation12.title = "WestSide Food Bank"
      
    mapView.addAnnotation(annotation)
    mapView.addAnnotation(annotation2)
      mapView.addAnnotation(annotation3)
      mapView.addAnnotation(annotation4)
      mapView.addAnnotation(annotation5)
      mapView.addAnnotation(annotation6)
      mapView.addAnnotation(annotation7)
      mapView.addAnnotation(annotation8)
      mapView.addAnnotation(annotation9)
      mapView.addAnnotation(annotation10)
      mapView.addAnnotation(annotation11)
      mapView.addAnnotation(annotation12)
      
    let cityRegion = MKCoordinateRegion(center: cityCoordinate, span: citySpan)
        mapView.setRegion(cityRegion, animated: true)
    return mapView
  }
  func updateUIView(_ view: MKMapView, context: Context) {
  }
  func makeCoordinator() -> Coordinator {
    Coordinator()
  }
  class Coordinator: NSObject, MKMapViewDelegate {
  }
}
struct RealMapView_Previews: PreviewProvider {
  static var previews: some View {
    RealMapView()
  }
}
