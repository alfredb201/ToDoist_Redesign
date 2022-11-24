//
//  TaskViewInbox.swift
//  ToDoist_Redesign
//
//  Created by Alfonso Buonaguro on 23/11/22.
//

import SwiftUI

struct TaskViewInbox: View {
    @State var isSelected: Bool = false
        
    var body: some View {
        
        List {
            ForEach(TaskListInbox) { TaskNote in
                HStack{
                    Toggle("", isOn: $isSelected)
                        .labelsHidden()
                        .toggleStyle(ToggleCheckboxStyle())
                        .bold()
                        .font(.largeTitle)
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text ("\(TaskNote.TaskTitle)")
                            .fontWeight(.bold)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                        
                        Text("\(TaskNote.TaskDescriprion)")
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        
                    }
                    Spacer()
                    Image(systemName: "clock.fill")
                    Text ("\(TaskNote.TaskDate)")
                    Text(" ")
                }
            }
        }
    }
}

struct TaskViewInbox_Previews: PreviewProvider {
    static var previews: some View {
        TaskViewInbox()
    }
}
