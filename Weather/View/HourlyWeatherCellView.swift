//
//  HourlyWeatherCellView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 01/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct HourlyWeatherCellView: View {
    var body: some View {
        VStack {
            Text("08")
            Text(" ")
            Image("WeatherIcon")
                .resizable()
                .aspectRatio(UIImage(named: "WeatherIcon")!.size, contentMode: .fit)
                .frame(width: 25, height: 25)
            Text("27°")
        }.padding(.all, 0)
    }
}

struct HourlyWeatherCellView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyWeatherCellView()
    }
}
