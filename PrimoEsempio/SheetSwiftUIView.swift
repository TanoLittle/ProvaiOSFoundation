//
//  SheetSwiftUIView.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 16/02/23.
//

import SwiftUI

struct SheetSwiftUIView: View {
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
    
    @State var showDetail = false
    @State var selectedPlace: Place?
    
    var body: some View {
        NavigationStack {
            List(places) {place in
                HStack {
                    Image(place.image).resizable().frame(width: 100, height: 100)
                    Text(place.name)
                }.onTapGesture {
                    self.selectedPlace = place
                    self.showDetail = true
                }
            }.sheet( isPresented: $showDetail) {
                if let selected = selectedPlace {
                    DetailView(place: selected)
                }
            }
        }
    }
}

struct DetailView: View {

    @Environment(\.presentationMode) var presentationMode

    var place = Place(name: "", image: "")

    var body: some View {

        VStack{
            Image(place.image).resizable().scaledToFit()
            Text(place.name)
            Spacer()
        }.overlay(

            HStack{
                Spacer()
                VStack{

                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                        }) {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                        }.padding(.trailing, 20)
                            .padding(.top, 40)
                        Spacer()
                }
            }
        )
    }
}


struct SheetSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SheetSwiftUIView()
    }
}
