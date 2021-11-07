//
//  ThemeSource.swift
//  SwiftUIThemeModel
//
//  Created by Pooya on 2021-11-04.
//

import SwiftUI

class ThemeSource: ObservableObject {
    // MARK: Properties
    /// An MSAL credential object.
    @AppStorage("selectedTheme") var selectedThemeAS = 1 {
        didSet {
            updateTheme()
        }
    }
    
    // MARK: Initializers
    /// Initialize call updateTheme
    init() {
        updateTheme()
    }
    
    @Published var selectedTheme: Theme = Theme3()
    
    func updateTheme() {
        selectedTheme = ThemeManager.getTheme(selectedThemeAS)
    }
}
