//
//  SettingsViewModel.swift
//  WeatherAppPro
//
//  Created by Nguyen Dao Hung on 2025-08-25.
//

import Foundation
import SwiftUI

class SettingsViewModel : ObservableObject {
    @AppStorage("darkMode") var darkMode: Bool = true
    @AppStorage("unit") var unit: WeatherUnit = .metric
    
    public func isDarkModeEnabled() -> Bool {
        return darkMode
    }
}
