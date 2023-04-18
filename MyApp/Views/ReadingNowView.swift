//
//  ReadingNowView.swift
//  MyApp
//
//  Created by Students on 16.12.2022.
//

import SwiftUI

struct ReadingNowView: View {
    
    @State private var showAccountSheet = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Reading Now")
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Reading Now")
            .navigationBarItems(trailing:
                    Button(action: {
                showAccountSheet.toggle()
            }, label: {
                Image(systemName: "person.crop.circle")
            })
                        .sheet(isPresented: $showAccountSheet, content: {
                            AccountSheet()
                        })
                        .tint(.accentColor)
            )
        }
    }
}



struct ReadingNowView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingNowView()
    }
}
