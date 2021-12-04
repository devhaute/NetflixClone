import SwiftUI

struct TopLowButtons: View {
    var body: some View {
        HStack {
            Button {
                //
            } label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("TV Shows")
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("Movies")
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                Text("MY List")
            }
        }
        .padding(.leading)
        .padding(.trailing, 30)
        .offset(y: -10)
    }
}


struct TopLowButtons_Previews: PreviewProvider {
    static var previews: some View {
        TopLowButtons()
    }
}
