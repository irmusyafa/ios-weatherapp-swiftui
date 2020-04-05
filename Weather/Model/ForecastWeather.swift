//
//  ForecastWeather.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 04/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import Foundation

struct ForecastWeather: Codable {
    var date: Int
    var mainValue: ForecastWeatherMainValue
    var elements: [WeatherElement]
    let clouds: WeatherClouds
    let wind: WeatherWind

    enum CodingKeys: String, CodingKey {
        case clouds, wind
        case mainValue = "main"
        case date = "dt"
        case elements = "weather"
    }
    
    static func emptyInit() -> ForecastWeather {
        return ForecastWeather(
            date: 0,
            mainValue: ForecastWeatherMainValue.emptyInit(),
            elements: [],
            clouds: WeatherClouds.emptyInit(),
            wind: WeatherWind.emptyInit()
        )
    }
}

extension ForecastWeather: Identifiable {
    var id: String { "\(date)" }
}
