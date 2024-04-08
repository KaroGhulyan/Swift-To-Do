//
//  ListView.swift
//  To do
//
//  Created by Karo Ghulyan on 08.04.24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "Start Learning Swift",
        "Create First Todo App",
        "Creat To Do List"
    ]
    var body: some View {
    List {
        ForEach(items,id: \.self){
            item in ListRowView(title:item)
        }
     }
    .listStyle(PlainListStyle())
    .navigationTitle("My Tasks")
    .navigationBarItems(
        leading: EditButton(),
        trailing: NavigationLink("Add",destination: AddView())
    )
    }
}

struct ListView_Previews: PreviewProvider{
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


