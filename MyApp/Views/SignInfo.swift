
import SwiftUI

struct SignInfo : View {
    
   @State var textField = ""
   @State var imageName = ""
    
    @Binding var binding: String
        
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: imageName)
                .foregroundColor(.accentColor)
                .padding()
                .background(Color(uiColor: .systemGray6))
                    .clipShape(Circle())
            
            
            if imageName == "key" {
                SecureField(textField, text: $binding)
                    .padding()
                    .background(Color(uiColor: .systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
            } else {
                TextField(textField, text: $binding)
                    .padding()
                    .background(Color(uiColor: .systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            
        }.padding(.leading)
    }
}
