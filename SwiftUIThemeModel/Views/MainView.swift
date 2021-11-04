//
//  MainView.swift
//  SwiftUIThemeModel
//
//  Created by Pooya on 2021-11-04.
//
import SwiftUI

struct MainView: View {
    @EnvironmentObject var dataSource: ThemeSource
    var body: some View {
        ForEach(0..<ThemeManager.themes.count, id: \.self) { theme in
            if ThemeManager.themes[theme].themeName == dataSource.selectedTheme.themeName {
                ContentView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ThemeSource())
    }
}

