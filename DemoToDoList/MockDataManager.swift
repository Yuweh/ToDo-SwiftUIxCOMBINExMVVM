//
//  MockDataManager.swift
//  DemoToDoList
//
//  Created by Jay Bergonia on 5/1/22.
//

import Foundation

class MockDataManager {
    private var todos = [Todo]()
    
    init() {
        todos = [
            Todo(id: UUID(), title: "Morning workout", isCompleted: false),
            Todo(id: UUID(), title: "Sign documents", isCompleted: false),
            Todo(id: UUID(), title: "Check email", isCompleted: true),
            Todo(id: UUID(), title: "Call boss", isCompleted: false),
            Todo(id: UUID(), title: "Buy groceries", isCompleted: false),
            Todo(id: UUID(), title: "Finish article", isCompleted: true),
            Todo(id: UUID(), title: "Pay bills", isCompleted: true)
        ]
    }
    
}

// MARK: - DataManagerProtocol
extension MockDataManager: DataManagerProtocol {
    func fetchTodoList(includingCompleted: Bool = false) -> [Todo] {
        includingCompleted ? todos : todos.filter { !$0.isCompleted }
    }
    
    func add(todo: Todo) {
        todos.insert(todo, at: 0)
    }
    
    func toggleIsCompleted(for todo: Todo) {
        if let index = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[index].isCompleted.toggle()
        }
    }
}
