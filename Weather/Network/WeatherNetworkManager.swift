//
//  WeatherNetworkManager.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 05/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI
import Combine

class WeatherNetworkManager: ObservableObject {
    var didChange = PassthroughSubject<WeatherNetworkManager, Never>()

    var currentWeather = CurrentWeather.emptyInit() {
        willSet {
            objectWillChange.send()
        }
    }
    
    var forecasetWeather = ForecastWeatherResponse.emptyInit() {
        willSet {
            objectWillChange.send()
        }
    }
    
    let client = OpenweatherAPIClient()
    
    init() {
        let serpongCityId = "1627459"

        client.getCurrentWeather(at: serpongCityId) { weather, error in
            if let weather = weather {
                self.currentWeather = weather
            }
        }
        client.getForecastWeather(at: serpongCityId) { weather, error in
            if let weather = weather {
                self.forecasetWeather = weather
            }
        }
    }
}
