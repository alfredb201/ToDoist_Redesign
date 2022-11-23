//
//  Checkbox.swift
//  ToDoist_Redesign
//
//  Created by Alfonso Buonaguro on 22/11/22.
//

import Foundation
import SwiftUI

struct ToggleCheckboxStyle : ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(systemName: "checkmark.square")
                .symbolVariant(configuration.isOn ? .fill : .none)
        }
        .tint(.green)
    }
}
