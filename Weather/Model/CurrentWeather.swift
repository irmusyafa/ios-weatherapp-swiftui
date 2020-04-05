//
//  CurrentWeather.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 05/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import Foundation

struct CurrentWeather: Codable {
    let timezone, id: Int
    let name: String
    let coordinat: Coordinat
    let elements: [WeatherElement]
    let base: String
    let mainValue: CurrentWeatherMainValue
    let visibility: Int
    let wind: WeatherWind
    let clouds: WeatherClouds
    let date: Int
    let sys: CurrentWeatherSys
    let code: Int
    
    enum CodingKeys: String, CodingKey {
        case base, visibility, wind, clouds, sys, timezone, id, name
        case elements = "weather"
        case coordinat = "coord"
        case mainValue = "main"
        case date = "dt"
        case code = "cod"
    }
}
