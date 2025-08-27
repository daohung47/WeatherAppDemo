//
//  SettingsView.swift
//  WeatherAppPro
//
//  Created by Nguyen Dao Hung on 2025-08-25.
//

import SwiftUI

struct SettingsView: View {
    @ObservedObject var settingsVM: SettingsViewModel
    @Binding var showSettings: Bool
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section {
                        HStack {
                            Text("Dark Mode Enabled")
                            Spacer()
                            Toggle("", isOn: $settingsVM.darkMode)
                                .tint(.blue)
                        }
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button("Done") {
                        showSettings = false
                    }
                }
            }
        }
        .preferredColorScheme(settingsVM.darkMode ? .dark : .light )
    }
}

#Preview {
    SettingsView(settingsVM: SettingsViewModel(), showSettings: .constant(true))
}
