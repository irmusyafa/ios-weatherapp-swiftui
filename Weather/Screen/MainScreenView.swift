//
//  ContentView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 25/03/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                LocationAndTemperatureHeaderView()
                Spacer()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        DailyWeatherCellView(day: "Today")
                        Rectangle().frame(height: 1)
                        
                        HourlyWeatherView()
                        Rectangle().frame(height: 1)
                        
                        DailyWeatherView()
                        Rectangle().frame(height: 1)
                    }
                }
                Spacer()
            }
        }.colorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
