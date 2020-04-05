//
//  HourlyWeatherCellView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 01/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct HourlyWeatherCellView: View {
    var data: ForecastWeather

    var hour: String {
        return data.date.dateFromMilliseconds().hour()
    }

    var temperature: String {
        return "\(Int(data.mainValue.temp))°"
    }

    var icon: String {
        var image = "WeatherIcon"
        if let weather = data.elements.first {
            image = weather.icon
        }
        return image
    }

    var body: some View {
        VStack {
            Text(hour)
            Text("\(data.mainValue.humidity)%")
                .font(.system(size: 12))
                .foregroundColor(
                    .init(red: 127/255,
                          green: 1,
                          blue: 212/255)
                )
            Image(icon)
                .resizable()
                .aspectRatio(UIImage(named: icon)!.size, contentMode: .fit)
                .frame(width: 30, height: 30)
            Text(temperature)
        }.padding(.all, 0)
    }
}

struct HourlyWeatherCellView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyWeatherCellView(data: ForecastWeather.emptyInit())
    }
}
