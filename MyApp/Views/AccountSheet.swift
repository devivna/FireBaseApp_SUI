//
//  AccountSheet.swift
//  MyApp
//
//  Created by Students on 16.12.2022.
//

import SwiftUI

struct AccountSheet: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var username =  "Nadia Ivashchenko"
    var email = "nadia.ivashchenko@gmail.com"
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack(spacing: 20) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 75, height: 75)
                        .foregroundColor(Color(uiColor: .systemGray))
                        
                    
                    VStack(alignment: .leading, spacing: 15) {
                        Text(username)
                            .font(.title2)
                        Text(email)
                            .font(.callout)
                            .foregroundColor(Color(uiColor: .systemGray))
                            .lineLimit(1)
                            .truncationMode(.middle)
                    }
                    //.badge("Change")
                    
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(uiColor: .systemGray6))
                )
                .padding()
                
            }
            .navigationBarItems(trailing:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Done")
                    .bold()
            })
                                        .tint(.primary)
            )
        }
    }
}

struct AccountSheet_Previews: PreviewProvider {
    
    static var previews: some View {
        AccountSheet()
    }
}
