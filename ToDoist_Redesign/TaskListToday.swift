//
//  TaskListToday.swift
//  ToDoist_Redesign
//
//  Created by Alfonso Buonaguro on 23/11/22.
//

import Foundation

struct TaskNote: Identifiable {
    let id = UUID()
    var TaskTitle: String
    var TaskDescriprion: String
    var TaskDate: String
}

let TaskListToday : [TaskNote] = [
    
    TaskNote(TaskTitle: "Coffee", TaskDescriprion: "Make Coffee", TaskDate: "Today"),
    TaskNote(TaskTitle: "Teeth", TaskDescriprion: "Brush Teeth", TaskDate: "Today"),
    TaskNote(TaskTitle: "Meditation", TaskDescriprion: "Meditation session", TaskDate: "Today"),
    TaskNote(TaskTitle: "Vet", TaskDescriprion: "Bring the dog to the Vet", TaskDate: "Today"),
    TaskNote(TaskTitle: "App", TaskDescriprion: "Debugging session", TaskDate: "Today")
    
]


let TaskListInbox : [TaskNote] = [
    
    TaskNote(TaskTitle: "Grocery", TaskDescriprion: "Buy bread and cheese", TaskDate: "Tomorrow"),
    TaskNote(TaskTitle: "Pizza", TaskDescriprion: "Pizza with Academy students", TaskDate: "26th November"),
    TaskNote(TaskTitle: "Car", TaskDescriprion: "Wash the car", TaskDate: "27th November")
    
]


let TaskListDone : [TaskNote] = [
    
    TaskNote(TaskTitle: "Gym", TaskDescriprion: "Go to gym", TaskDate: "Yesterday"),
    TaskNote(TaskTitle: "Pokémon", TaskDescriprion: "Order the new Pokémon game", TaskDate: "18th November")
    
]
