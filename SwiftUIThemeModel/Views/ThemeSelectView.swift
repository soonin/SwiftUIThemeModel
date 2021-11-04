//
//  ThemeSelectView.swift
//  SwiftUIThemeModel
//
//  Created by Pooya on 2021-11-04.
//

import SwiftUI

struct ThemeSelectView: View {
    @EnvironmentObject var themeSource: ThemeSource
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        NavigationView {
            VStack {
                Text("Select one Theme")
                    .foregroundColor(Color(themeSource.selectedTheme.labelColor))
                    .padding()
                ForEach(0..<ThemeManager.themes.count, id: \.self) { theme in
                    Button(ThemeManager.themes[theme].themeName) {
                        themeSource.selectedThemeAS = theme
                        presentationMode.wrappedValue.dismiss()
                    }
                    .buttonStyle(FilledRoundedCornerButtonStyle(bgColor: Color(ThemeManager.themes[theme].primaryColor),
                                                                fgColor: Color(ThemeManager.themes[theme].secondaryColor)))
                }
                Spacer()
            }
            .navigationBarTitle("Theme select View")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title2)
            })
        }
    }
}

struct ThemeSelectView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeSelectView()
    }
}

