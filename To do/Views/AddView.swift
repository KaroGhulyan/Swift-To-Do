//
//  AddView.swift
//  To do
//
//  Created by Karo Ghulyan on 08.04.24.
//

import SwiftUI

struct AddView: View {
     @State var textFieldText:String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField ("Type something here",text: $textFieldText)
                    .frame(height:55)
                    .padding(.horizontal)
                    .cornerRadius(10)
                Button (
                    action: {}, 
                    label: {
                        Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .background(Color.accentColor)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                    })
            }
        }.padding(14)
        .navigationTitle("Add Some Task")
    }
}

struct AddView_Preview: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
