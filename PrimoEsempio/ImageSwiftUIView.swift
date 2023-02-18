import SwiftUI

struct ImageSwiftUIView: View {
    var body: some View {
        VStack{
            Image("bad").resizable().scaledToFit()
                .opacity(0.8)
                .overlay (
                    HStack{
                        Text("Bad Batch")
                            .clipShape(Ellipse()).font(.custom("AmericanTypewriter",fixedSize:36))
                            .foregroundColor(.orange)
                            .fontWeight(.bold)
                    }.position(x:100, y:180)
                   
                ).border(.yellow,width:5)
                .cornerRadius(5)
                .padding(5)
                .shadow(color: .black,radius:5)
            
        }.ignoresSafeArea()
    }
}

struct ImageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSwiftUIView()
    }
}
