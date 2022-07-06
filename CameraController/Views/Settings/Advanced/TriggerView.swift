//
//  TriggerView.swift
//  CameraController
//
//  Created by Cody Smith 2022.
//  Copyright © 2020 Itaysoft. All rights reserved.
//

import SwiftUI

struct TriggerView: View {
    @ObservedObject var controller: DeviceController

    var body: some View {
        GroupBox(){
            HStack() {
                VStack(alignment: .leading) {
                    Toggle(isOn: $controller.trigger.isEnabled) {
                        Text("Trigger On")
                    }
                    .disabled(!controller.trigger.isCapable)
                }
                Spacer()
            }
        }
    }
}
