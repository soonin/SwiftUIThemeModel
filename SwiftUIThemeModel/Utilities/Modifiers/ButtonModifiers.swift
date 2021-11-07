//
//  ButtonModifiers.swift
//  SwiftUIThemeModel
//
//  Created by Pooya on 2021-11-04.
//

import SwiftUI

struct FilledRoundedCornerButtonStyle: ButtonStyle {
    var font: Font = .body
    var padding: CGFloat = 8
    var bgColor = Color(.white)
    var fgColor = Color(.orange)
    var cornerRadius: CGFloat = 8
    
    /// func to make button body with properties
    ///  - Parameters :
    ///   - configuration : Configuration ,
    ///
    ///  - Returns : View , which a button with new properties
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(font)
            .padding(padding)
            .background(bgColor)
            .foregroundColor(fgColor)
            .cornerRadius(cornerRadius)
            .shadow(radius: 10)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
