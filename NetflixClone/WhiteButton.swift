import SwiftUI

struct WhiteButton: View {
    let text: String
    let imageName: String
    
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                
                Spacer()
            }
            .foregroundColor(.black)
            .padding(.vertical, 6)
            .background(Color.white)
            .cornerRadius(3)
        }
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            WhiteButton(text: "Play", imageName: "play.fill") {
                //
            }
        }
    }
}
