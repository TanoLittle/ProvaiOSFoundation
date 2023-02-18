//
//  Place.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 15/02/23.
//
import Foundation
import MapKit

// indentifica il mio posto sulla mappa
struct Place: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var location: CLLocationCoordinate2D = .init(latitude: 37.8715, longitude: -122.2730)
}
