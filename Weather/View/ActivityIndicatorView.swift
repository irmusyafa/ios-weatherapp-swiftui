//
//  ActivityIndicatorView.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 05/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import SwiftUI

struct ActivityIndicatorView: UIViewRepresentable {

    typealias UIView = UIActivityIndicatorView
    var isAnimating: Bool
    var configuration = { (indicator: UIView) in }

    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIView { UIView() }
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Self>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
        configuration(uiView)
    }
}

extension View where Self == ActivityIndicatorView {
    func configure(_ configuration: @escaping (Self.UIView)->Void) -> Self {
        Self.init(isAnimating: self.isAnimating, configuration: configuration)
    }
}
