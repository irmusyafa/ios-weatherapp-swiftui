//
//  DailyWeatherView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 01/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct DailyWeatherView: View {
    var body: some View {
        VStack {
            DailyWeatherCellView(day: "Sunday")
            DailyWeatherCellView(day: "Monday")
            DailyWeatherCellView(day: "Tuesday")
            DailyWeatherCellView(day: "Wednesday")
            DailyWeatherCellView(day: "Thursday")
        }
    }
}

struct DailyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DailyWeatherView()
    }
}
