//
//  TaskView.swift
//  ToDoist_Redesign
//
//  Created by Alfonso Buonaguro on 22/11/22.
//

import SwiftUI

struct TaskView: View {
    
    @State var isSelected: Bool = false
        
    var body: some View {
        HStack{
            Toggle("", isOn: $isSelected)
                .labelsHidden()
                .toggleStyle(ToggleCheckboxStyle())
                .bold()
                .font(.largeTitle)
            
            VStack(alignment: .leading, spacing: 4){
                Text ("Task one")
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                
                Text("bla bla bla")
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                
            }
            Spacer()
            Image(systemName: "clock.fill")
                .foregroundColor(.blue)
            Text ("Today")
            Text(" ")
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
