//
//  ListRowView.swift
//  To do
//
//  Created by Karo Ghulyan on 08.04.24.
//

import SwiftUI

struct ListRowView: View {
        let title: String
        var body: some View {
            HStack{
                Image(systemName: "checkmark.circle")
                Text(title)
                Spacer()
            }
        }
}


struct ListRowView_Preview : PreviewProvider{
    static var previews: some View {
        ListRowView(title: "hello")
    }
}
