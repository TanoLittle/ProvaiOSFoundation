//
//  Mappina.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 15/02/23.
//

import SwiftUI
import MapKit

struct Mappina: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.8199, longitude:-122.4783), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var places = [Place(name: "San Francisco",
                            image:"sanfrancisco",
                            location: .init(latitude: 37.8199,
                                            longitude: -122.4783)),
                  Place(name: "Stanford",
                            image: "stanford",
                            location: .init(latitude: 37.4275, longitude: -122.1697)),
                  Place(name: "Berkeley",
                            image: "berkeley",
                            location: .init(latitude: 37.8715, longitude: -122.2730)
                            )]
    
    var body: some View {
        /*
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
         */
            NavigationStack{
                Map(coordinateRegion: $region, annotationItems: places) { item in
                    /*MapMarker(coordinate: item.location, tint: .red)*/
                    MapAnnotation( coordinate: item.location) {
                        NavigationLink(destination: EmptyView()) {
                            VStack{
                                Image(systemName: "car")
                                Text(item.name).foregroundColor(.red)
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.purple, lineWidth: 4)
                                    .frame(width: 30, height: 30)
                            }
                        }
                    }
                }
        }
    }
}

struct Mappina_Previews: PreviewProvider {
    static var previews: some View {
        Mappina()
    }
}
