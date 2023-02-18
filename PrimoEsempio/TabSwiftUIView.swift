//
//  TabSwiftUIView.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 15/02/23.
//

import SwiftUI

struct TabSwiftUIView: View {
    var body: some View {
        TabView {
            VStack{
                EmptyView()
            }.tabItem{
                Label("Vehicle", systemImage: "car")
            }
            VStack{
                Mappina()
            }.tabItem{
                Label("Mappa", systemImage: "map")
            }
            
            
        }
    }
}

struct TabSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabSwiftUIView()
    }
}
