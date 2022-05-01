//
//  TodoListView.swift
//  DemoToDoList
//
//  Created by Jay Bergonia on 5/1/22.
//

import SwiftUI

struct TodoListView: View {
    @ObservedObject var viewModel = TodoListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.todos) { todo in
                Text(todo.title)
            }
            .navigationBarTitle(Text("Todo List"))
        }
        .onAppear {
            self.viewModel.fetchTodos()
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        var view = TodoListView()
        view.viewModel = TodoListViewModel(dataManager: MockDataManager())
        return view
    }
}
