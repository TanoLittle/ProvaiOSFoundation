//
//  SearchSwiftUIView.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 16/02/23.
//

import SwiftUI

struct SearchSwiftUIView: View {
    var films = ["Episodio1","Episodio2","Episodio3"]
    @State var searchText: String
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filtered, id:\.self) {
                    film
                    in  ZStack (alignment: .leadingLastTextBaseline){
                        NavigationLink( destination: EmptyView()){
                            EmptyView()
                        }.opacity(0)
                        VStack (alignment: .leading){
                            Text(film).foregroundColor(.red)
                            Image("stanford").resizable().scaledToFit()
                        }
                    }
                }
            }.searchable(text: $searchText)
        }
    }
    
    var filtered: [String]{
        if searchText.isEmpty{
            return films
        } else{
            return films.filter({(nome: String) -> Bool in
                if nome.lowercased().contains(searchText.lowercased())
                {
                    return true
                }
                else {
                    return false
                }
                
            })
        }
    }
}

struct SearchSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SearchSwiftUIView(searchText: "")
    }
}
