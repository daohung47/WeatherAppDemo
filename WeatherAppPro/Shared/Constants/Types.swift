//
//  Types.swift
//  WeatherAppPro
//
//  Created by Nguyen Dao Hung on 2025-08-25.
//

import Foundation

public enum WeatherUnit: String {
    case metric
    case imperial
}

public enum WeatherType: String {
    case thunderstorm = "Thunderstorm"
    case drizzle = "Drizzle"
    case rain = "Rain"
    case snow = "Snow"
    case atmosphere = "Atmosphere"
    case clear = "Clear"
    case clouds = "Clouds"
}

public enum WeatherOverlayType: String, CaseIterable {
    case clouds_new = "Clouds"
    case precipitation_new = "Precipitation"
    case pressure_new = "Pressure"
    case wind_new = "Wind"
    case temp_new = "Temperature"
}
