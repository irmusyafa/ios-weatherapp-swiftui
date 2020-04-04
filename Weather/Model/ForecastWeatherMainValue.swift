//
//  ForecastWeatherMainValue.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 04/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import Foundation

struct ForecastWeatherMainValue: Codable {
    let temp, feelsLike, tempMin, tempMax: Double
    let pressure, seaLevel, grndLevel, humidity: Int
    let tempKf: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure
        case seaLevel = "sea_level"
        case grndLevel = "grnd_level"
        case humidity
        case tempKf = "temp_kf"
    }
}
