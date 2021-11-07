//
//  ThemeManager.swift
//  SwiftUIThemeModel
//
//  Created by Amir Hatami on 2021-11-04.
//

import Foundation

enum ThemeManager {
    static let themes: [Theme] = [Theme1(), Theme2(), Theme3(), Theme4()]
    
    /// get Theme  a token for the provided scope.
    /// - Parameters:
    ///   - theme: Int, index of theme in .themes array
    /// - Returns: Theme
    static func getTheme(_ theme: Int) -> Theme {
        Self.themes[theme]
    }
}
