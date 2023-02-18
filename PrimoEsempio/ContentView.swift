//
//  ContentView.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 13/02/23.
//

import SwiftUI

struct ContentView: View {
    var names = ["topolino","minnie","paperino"]
    var body: some View {
        List(0..<3, id: \.self) {
            index in
            Text( names[index])
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
