//
//  ApiEndPoints.swift
//  WeatherAppPro
//
//  Created by Nguyen Dao Hung on 2025-08-25.
//

import Foundation

private let baseUrl = "https://api.openweathermap.org/data/3.0/onecall"
private let apiKey = "0a9d05f116dbabd6b6fc87e285cc7b19"
private let exclude = "minutely,alerts"

private let cityCurrentWeatherBaseUrl = "https://api.openweathermap.org/data/2.5/weather"
private let overlayBaseUrl = "https://tile.openweathermap.org/map/"
private let ariQulityBaseUrl = "https://api.openweathermap.org/data/2.5/air_pollution"

public func apiEndPoint(lat: Double, lon: Double, unit: WeatherUnit) -> String {
    return "\(baseUrl)?lat=\(lat)&lon=\(lon)&exclude=\(exclude)&appid=\(apiKey)&units=\(unit.rawValue)"
}

public func cityCurrentWeatherEndPoint(lat: Double, lon: Double, unit: WeatherUnit) -> String {
    return "\(cityCurrentWeatherBaseUrl)?lat=\(lat)&lon=\(lon)&appid=\(apiKey)&units=\(unit)"
}

public func mapOverlayEndPoint(selectedLayerType: WeatherOverlayType) -> String {
    return "\(overlayBaseUrl)\(selectedLayerType)/{z}/{x}/{y}.png?appid=\(apiKey)"
}

public func airQualityEndPoint(lat: Double, lon: Double, unit: WeatherUnit) -> String {
    return "\(ariQulityBaseUrl)?lat=\(lat)&lon=\(lon)&units=\(unit)&appid=\(apiKey)"
    
}
