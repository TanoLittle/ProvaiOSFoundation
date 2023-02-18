//
//  CarouselSwiftUIView.swift
//  PrimoEsempio
//
//  Created by gaetanooliva on 16/02/23.
//

import SwiftUI

struct CarouselSwiftUIView: View {
    
    var colorRow: [Color] = [.purple,.yellow]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                ForEach (0..<10) { j in
                    ScrollView(.horizontal){
                        HStack (spacing:5){
                            ForEach(0..<10) { i in VStack{
                                Text("Item \(i)").foregroundColor(colorRow[j % 2])
                                    .font(.largeTitle).frame(width: 200, height: 200).background(.black)
                            }.cornerRadius(20)
                            }
                        }
                    }
                }
            }.background(.black).opacity(0.9)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct CarouselSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselSwiftUIView()
    }
}
