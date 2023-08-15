//
//  ToDoListItemView.swift
//  To Do List
//
//  Created by Miras Adilov on 8/10/23.
//

import SwiftUI

struct ToDoListItemView: View {
    @State var viewModel = ToDoListItemViewViewModel()
    let item : ToDoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title)
                
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))").font(.footnote).foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button{
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.blue)
            }
        }
    }
}


struct ToDoListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemView(item: .init(
            id: "123",
            title: "Get milk",
            dueDate: Date().timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: false
            ))
    }
}
