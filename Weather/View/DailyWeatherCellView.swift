//
//  DailyWeatherCellView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 01/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct DailyWeatherCellView: View {
    let data: ForecastWeather
    
    var day: String {
        return data.date.dateFromMilliseconds().dayWord()
    }
    var temperatureMax: String {
        return "\(Int(data.mainValue.tempMax))°"
    }

    var temperatureMin: String {
        return "\(Int(data.mainValue.tempMin))°"
    }

    var body: some View {
        HStack {
            Text(day)
                .frame(width: 150, alignment: .leading)

            Image("WeatherIcon")
                .resizable()
                .aspectRatio(UIImage(named: "WeatherIcon")!.size, contentMode: .fit)
                .frame(width: 25, height: 25)

            Spacer()
            Text(temperatureMax)
            Spacer().frame(width: 34)
            Text(temperatureMin)
        }.padding(
            .init(arrayLiteral:.leading,.trailing),
            24
        )
    }
}

struct DailyWeatherCellView_Previews: PreviewProvider {
    static var previews: some View {
        DailyWeatherCellView(data: ForecastWeather.emptyInit())
    }
}
