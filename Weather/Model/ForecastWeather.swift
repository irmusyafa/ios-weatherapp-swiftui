//
//  ForecastWeather.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 04/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import Foundation

struct ForecastWeather: Codable {
    let date: Int
    let mainValue: ForecastWeatherMainValue
    let elements: [WeatherElement]
    let clouds: WeatherClouds
    let wind: WeatherWind

    enum CodingKeys: String, CodingKey {
        case clouds, wind
        case mainValue = "main"
        case date = "dt"
        case elements = "weather"
    }
}
