//
//  CityModel.swift
//  WeatherAppPro
//
//  Created by Nguyen Dao Hung on 2025-08-25.
//

import Foundation

struct CityModel: Identifiable, Hashable, Equatable  {
    let id: String
    var name: String
    let lat: Double
    let lon: Double
    let timeZoneOffset: Double
    let country: String?
    var isLoading: Bool = false
    var cityWeather: CityWeatherModel? = nil
    
    init(id: String, name: String, lat: Double, lon: Double, timeZoneOffset: Double, country: String?, cityWeather: CityWeatherModel?) {
        self.id = id
        self.name = name
        self.lat = lat
        self.lon = lon
        self.timeZoneOffset = timeZoneOffset
        self.country = country
        self.cityWeather = cityWeather
    }
}

let londonCity = CityModel(id: "51.5073-0.1277", name: "London", lat: 16.042196247548933, lon: 108.18791905665245, timeZoneOffset: 0, country: "GB", cityWeather: nil)
let colomboCity = CityModel(id: "6.92707979.861244", name: "Moratuwa", lat: 16.042196247548933, lon: 108.18791905665245, timeZoneOffset: 19800, country: "SL", cityWeather: nil)
