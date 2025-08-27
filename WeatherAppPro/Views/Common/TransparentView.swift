//
//  TransparentView.swift
//  WeatherAppPro
//
//  Created by Nguyen Dao Hung on 2025-08-25.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    @Binding var darkMode: Bool
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: darkMode ? .systemUltraThinMaterialDark : .systemUltraThinMaterialLight)
        let blurView = UIVisualEffectView(effect: blurEffect)
        return blurView
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        let blurEffect = UIBlurEffect(style: darkMode ? .systemUltraThinMaterialDark : .systemUltraThinMaterialLight)
        uiView.effect = blurEffect
    }
}
