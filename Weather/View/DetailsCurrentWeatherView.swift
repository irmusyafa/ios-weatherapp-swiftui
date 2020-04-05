//
//  DetailsCurrentWeatherView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 05/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct DetailsCurrentWeatherView: View {
    let data: CurrentWeather
    
    var sunrise: String {
        return data.sys.sunrise.dateFromMilliseconds().hourMinute()
    }

    var sunset: String {
        return data.sys.sunset.dateFromMilliseconds().hourMinute()
    }
    
    var temperatureMax: String {
        return "\(Int(data.mainValue.tempMax))°"
    }

    var temperatureMin: String {
        return "\(Int(data.mainValue.tempMin))°"
    }

    var visibility: String {
        return "\(Float(data.visibility/1000)) Km"
    }

    var feelsLike: String {
        return "\(data.mainValue.feelsLike)°"
    }
    
    var pressure: String {
        return "\(data.mainValue.pressure) hPa"
    }

    var humidity: String {
        return "\(data.mainValue.humidity)%"
    }

    var body: some View {
        VStack(spacing: 0) {
            DetailsCurrentWeatherCellView(
                firstData: ("SUNRISE", sunrise),
                secondData: ("SUNSET", sunset)
            )
            Rectangle().frame(height: CGFloat(1)).padding(.vertical, 8)

            DetailsCurrentWeatherCellView(
                firstData: ("PRESSURE", pressure),
                secondData: ("HUMIDITY", humidity)
            )
            Rectangle().frame(height: CGFloat(1)).padding(.vertical, 8)

            DetailsCurrentWeatherCellView(
                firstData: ("VISIBILITY", visibility),
                secondData: ("FEELS LIKE", feelsLike)
            )
            Rectangle().frame(height: CGFloat(1)).padding(.vertical, 8)

            DetailsCurrentWeatherCellView(
                firstData: ("HIGH TEMP", temperatureMax),
                secondData: ("LOW TEMP", temperatureMin)
            )
            Spacer()
        }.padding(.horizontal, 24)
    }
}

struct DetailsCurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsCurrentWeatherView(data: CurrentWeather.emptyInit())
    }
}
