//
//  LocationAndTemperatureHeaderView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 01/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct LocationAndTemperatureHeaderView: View {
//    let data: CurrentWeatherViewModel

    var body: some View {
        VStack {
            Text("Serpong")
                .font(.largeTitle)
                .fontWeight(.medium)
                .padding(.top, 32)
            Text("Partly Cloudy")
                .font(.body)
                .fontWeight(.light)
                .padding(.bottom, 4)
            Text("32°")
                .font(.system(size: 86))
                .fontWeight(.thin)
        }
    }
}
