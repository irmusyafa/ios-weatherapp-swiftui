//
//  BackgroundView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 01/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        let clodyScheme = [Color(red: 41/255, green: 128/255, blue: 184/255),
                           Color(red: 109/255, green: 212/255, blue: 250/255),
                           Color(red: 109/255, green: 212/255, blue: 250/255),
                           Color(red: 109/255, green: 212/255, blue: 250/255),
                           Color.white]

//        let defaultScheme = [Color.black,
//                             Color(red: 20/255, green: 31/255, blue: 78/255),
//                             Color(red: 141/255, green: 87/255, blue: 151/255)]
        
        let colorScheme : [Color] = clodyScheme
        
        let gradient = Gradient(colors: colorScheme)
        let linearGradient = LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
        
        let background = Rectangle()
            .fill(linearGradient)
            .blur(radius: 200, opaque: true)
            .edgesIgnoringSafeArea(.all)
        
        return background
    }
}
