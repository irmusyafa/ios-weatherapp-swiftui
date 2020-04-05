//
//  DailyWeatherView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 01/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct DailyWeatherView: View {
    let data: [ForecastWeather]
    
    var body: some View {
        VStack {
            ForEach(data, id: \.date) { data in
                DailyWeatherCellView(data: data)
            }
        }
    }
}

struct DailyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DailyWeatherView(data: [ForecastWeather.emptyInit()])
    }
}
