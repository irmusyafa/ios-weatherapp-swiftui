//
//  HourlyWeatherView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 01/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct HourlyWeatherView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                HourlyWeatherCellView()
                Spacer().frame(width: 24)
                HourlyWeatherCellView()
                Spacer().frame(width: 24)
                HourlyWeatherCellView()
                Spacer().frame(width: 24)
                HourlyWeatherCellView()
                Spacer().frame(width: 24)
                HourlyWeatherCellView()
                Spacer().frame(width: 24)
            }.padding(
                .init(arrayLiteral:.leading,.trailing),
                24
            )
        }
    }
}

struct HourlyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyWeatherView()
    }
}
