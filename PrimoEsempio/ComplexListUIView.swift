//
//  ComplexListUIView.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 14/02/23.
//

import SwiftUI

struct Vehicle: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct ComplexListUIView: View {
    @State var vehicles = [Vehicle(name: "car", image: "car"),
                           Vehicle(name: "bus", image: "bus"),
                           Vehicle(name: "tram", image: "tram"),
                           Vehicle(name: "bicycle", image: "bicycle")]
    init() {
            let navBarAppearance = UINavigationBarAppearance()

        navBarAppearance.backgroundColor = UIColor.purple

            navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemRed,  .font: UIFont(name: "ArialRoundedMTBold", size:35)!]

            navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemRed, .font: UIFont(name: "ArialRoundedMTBold", size: 20)!]
        
            UINavigationBar.appearance().standardAppearance = navBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
            UINavigationBar.appearance().compactAppearance = navBarAppearance

            navBarAppearance.setBackIndicatorImage(UIImage(systemName: "arrow.turn.up.left"), transitionMaskImage: UIImage(systemName: "arrow.turn.up"))
        
            UINavigationBar.appearance().tintColor = UIColor.white
        }

    
    var body: some View {
        TabView{
            NavigationStack {
                // prima navigationView
                List {
                    ForEach(vehicles) { vehicle in
                        NavigationLink(destination: VehicleView(vehicle: vehicle))
                        {
                            RowView(vehicle : vehicle)
                        }
                    }.onDelete { (indexSet) in
                        self.vehicles.remove(atOffsets: indexSet)
                    }
                    .swipeActions(edge: .leading) {
                        Button(action: {}){
                            Label("Tag",systemImage: "tag")
                        }.tint(Color(UIColor.systemOrange))
                    }
                }
                .navigationBarTitle("Trasports",displayMode: .automatic)
            }.tabItem{
                Label("Vehicle",systemImage: "car")
            }
            Text("Dove devo andare")
                .tabItem{
                Label("Where", systemImage: "map")
            }
            Text("So Lillo")
                .tabItem(){
                    Label("Profilo",systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct ComplexListUIView_Previews: PreviewProvider {
    static var previews: some View {
        ComplexListUIView()
    }
}

struct RowView: View {
    var vehicle: Vehicle
    var body: some View {
        HStack {
            Image(systemName: vehicle.image)
                .resizable()
                .frame(width: 40, height: 40)
                
            
            /*@START_MENU_TOKEN@*/Text(vehicle.name)/*@END_MENU_TOKEN@*/
        }
    }
}
