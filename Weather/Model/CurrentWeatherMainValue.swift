//
//  CurrentWeatherMainValue.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 05/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import Foundation

struct CurrentWeatherMainValue: Codable {
    let temp, feelsLike, tempMin, tempMax: Double
    let pressure, humidity: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure, humidity
    }
    
    static func emptyInit() -> CurrentWeatherMainValue {
        return CurrentWeatherMainValue(
            temp: 0.0,
            feelsLike: 0.0,
            tempMin: 0,
            tempMax: 0,
            pressure: 0,
            humidity: 0
        )
    }
}
