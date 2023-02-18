//
//  StateSwiftUIView.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 15/02/23.
//

import SwiftUI

struct StateSwiftUIView: View {
    @State var random = 1
    var body: some View {
        VStack{
            CounterButton(color: .blue, random: $random)
            CounterButton(color: .green ,random: $random)
            CounterButton(color: .red,random: $random)
        }
    }
}

struct CounterButton: View{
    var color: Color
    @Binding var random: Int
    
    var body: some View{
        Button(action: {
            self.random = Int.random(in: 0...100)
            
            
        }) {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
                .overlay(
                    Text("\(random)")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    
                    
                    
                    
                )
        }
    }
}

struct StateSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StateSwiftUIView()
    }
}
