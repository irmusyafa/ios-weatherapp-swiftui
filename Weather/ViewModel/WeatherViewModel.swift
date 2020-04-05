//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 05/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI
import Combine

class WeatherViewModel: ObservableObject {
    let client = OpenweatherAPIClient()

    var stateView: StateView = StateView.loading {
        willSet {
            objectWillChange.send()
        }
    }

    var currentWeather = CurrentWeather.emptyInit() {
        willSet {
            objectWillChange.send()
        }
    }
    
    var todayWeather = ForecastWeather.emptyInit() {
        willSet {
            objectWillChange.send()
        }
    }

    var hourlyWeathers: [ForecastWeather] = [] {
        willSet {
            objectWillChange.send()
        }
    }

    var dailyWeathers: [ForecastWeather] = [] {
        willSet {
            objectWillChange.send()
        }
    }
        
    private var stateCurrentWeather = StateView.loading
    private var stateForecastWeather = StateView.loading

    init() {
        let serpongCityId = "1627459"

        client.getCurrentWeather(at: serpongCityId) { [weak self] currentWeather, error in
            guard let ws = self else { return }
            if let currentWeather = currentWeather {
                ws.currentWeather = currentWeather
                ws.todayWeather = currentWeather.getForecastWeather()
                ws.stateCurrentWeather = .success
            } else {
                ws.stateCurrentWeather = .failed
            }
            ws.updateStateView()
        }

        client.getForecastWeather(at: serpongCityId) { [weak self] forecastWeatherResponse, error in
            guard let ws = self else { return }
            if let forecastWeatherResponse = forecastWeatherResponse {
                ws.hourlyWeathers = forecastWeatherResponse.list
                ws.dailyWeathers = forecastWeatherResponse.dailyList
                ws.stateForecastWeather = .success
            } else {
                ws.stateForecastWeather = .failed
            }
            ws.updateStateView()
        }
    }
    
    private func updateStateView() {
        if stateCurrentWeather == .success, stateForecastWeather == .success {
            stateView = .success
        }
        
        if stateCurrentWeather == .failed, stateForecastWeather == .failed {
            stateView = .failed
        }
    }
}
