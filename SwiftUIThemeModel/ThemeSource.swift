//
//  ThemeSource.swift
//  SwiftUIThemeModel
//
//  Created by Pooya on 2021-11-04.
//

import SwiftUI

class ThemeSource: ObservableObject {
    @AppStorage("selectedTheme") var selectedThemeAS = 1 {
        didSet {
            updateTheme()
        }
    }
    
    init() {
        updateTheme()
    }
    
    @Published var selectedTheme: Theme = Theme3()
    
    func updateTheme() {
        selectedTheme = ThemeManager.getTheme(selectedThemeAS)
    }
}
