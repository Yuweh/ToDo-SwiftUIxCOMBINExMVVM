//
//  ToDo.swift
//  DemoToDoList
//
//  Created by Jay Bergonia on 5/1/22.
//

import Foundation

struct Todo: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted = false
}
