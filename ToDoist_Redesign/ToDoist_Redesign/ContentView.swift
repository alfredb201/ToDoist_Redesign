//
//  ContentView.swift
//  ToDoist_Redesign
//
//  Created by Alfonso Buonaguro on 17/11/22.
//

import SwiftUI


struct ContentView: View {
    @State var text: String
    @State var showInfoModalView = false
    @State var title: String
    @State var note: String
    @State var date = Date()
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        
        TabView(selection: .constant(1)) {
            NavigationView{
                Text("")
                    .searchable(text: $text)
                    .navigationTitle("Today")
                    .toolbar{
                        Button(action: {
                            showInfoModalView = true
                        }, label: {
                            Image(systemName: "plus")
                            
                        })
                        .sheet(isPresented: $showInfoModalView) {
                            VStack (alignment: .leading) {
                                
                                NavigationView {
                                    Form {
                                        Section (header: Text("Title")){
                                            TextField("Title", text: $title)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                                .navigationTitle("New task")
                                                .toolbar{
                                                    ToolbarItem (placement: .cancellationAction){
                                                        Button("Cancel",action: {
                                                            showInfoModalView.toggle()
                                                        })
                                                    }
                                                    ToolbarItem(placement: .navigationBarTrailing){
                                                        Button("Add",action: {})
                                                    }
                                                }
                                        }
                                        
                                        Section (header: Text("Note")){
                                            TextField("Note", text: $note)
                                            DatePicker ("Date", selection: $date,displayedComponents: .date)
                                                .datePickerStyle(.graphical)
                                        }
                                    }                                }
                            }
                        }
                    }
            }.tabItem {
                Image(systemName: "calendar")
                Text("Today") }.tag(1)
            
            NavigationView{
                Text("")
                    .searchable(text: $text)
                    .navigationTitle("Inbox")
                    .toolbar{
                        Button(action: {
                            showInfoModalView = true
                        }, label: {
                            Image(systemName: "plus")
                            
                        })
                        .sheet(isPresented: $showInfoModalView) {
                            VStack (alignment: .leading) {
                                
                                NavigationView {
                                    Form {
                                        Section (header: Text("Title")){
                                            TextField("Title", text: $title)
                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                                .navigationTitle("New task")
                                                .toolbar{
                                                    ToolbarItem (placement: .cancellationAction){
                                                        Button("Cancel",action: {
                                                            showInfoModalView.toggle()
                                                        })
                                                    }
                                                    ToolbarItem(placement: .navigationBarTrailing){
                                                        Button("Add",action: {})
                                                    }
                                                }
                                            
                                        }
                                        
                                        Section (header: Text("Note")){
                                            TextField("Note", text: $note)
                                            DatePicker ("Date", selection: $date,displayedComponents: .date)
                                                .datePickerStyle(.graphical)
                                        }
                                    }
                                }
                            }
                        }
                    }
            }.tabItem {
                Image(systemName: "tray")
                Text("Inbox") }.tag(2)
            
            NavigationView{
                Text("Tab Content 3")
                    .searchable(text: $text)
                    .navigationTitle("Done")
            }.tabItem {
                Image(systemName: "checkmark.rectangle.portrait")
                Text("Done") }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: "", title: "", note: "")
    }
}
