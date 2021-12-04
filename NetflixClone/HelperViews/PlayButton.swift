import SwiftUI

struct PlayButton: View {
    var text: String
    var imageName: String
    var backgroundColor: Color = .white
    
    var action: () -> Void
    
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
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .padding(.vertical, 6)
            .background(backgroundColor)
            .cornerRadius(3)
        }
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                //
            }
        }
    }
}
