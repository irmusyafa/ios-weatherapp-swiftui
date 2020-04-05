//
//  ForecastWeatherResponse.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 05/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import Foundation

struct ForecastWeatherResponse: Codable {
    let code: String
    let message, count: Int
    let list: [ForecastWeather]
    let city: ForecastWeatherCity
    
    enum CodingKeys: String, CodingKey {
        case code = "cod"
        case message
        case count = "cnt"
        case list, city
    }
}
