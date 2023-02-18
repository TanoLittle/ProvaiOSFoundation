//
//  ButtonSwiftUIView.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 16/02/23.
//

import SwiftUI

struct ButtonSwiftUIView: View {
    @State var textInserted: String
    @State var newxtWindow = [Int]()
    //Array<Int>()
    var body: some View {
        NavigationStack(path: $newxtWindow){
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Button("Avanti") {
                    self.newxtWindow.append(1)
                }
                TextField("Inserisci nome" , text: $textInserted)
            }.padding()
                .navigationDestination(for : Int.self) {
                    i in
                    Text("\(i)")
                    
                }
        }
    }
}

struct ButtonSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwiftUIView(textInserted : "")
    }
}
