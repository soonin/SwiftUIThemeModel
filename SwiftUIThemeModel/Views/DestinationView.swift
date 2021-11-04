//
//  DestinationView.swift
//  SwiftUIThemeModel
//
//  Created by Pooya on 2021-11-04.
//

import SwiftUI

struct DestinationView: View {
    @EnvironmentObject var themeSource: ThemeSource
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
            VStack {
                Text("This view is as a result of a Navigation Link")
                    .foregroundColor(Color(themeSource.selectedTheme.labelColor))
                    .padding()
                Button("Dismiss this view") {
                    presentationMode.wrappedValue.dismiss()
                }
                Spacer()
            }
            .buttonStyle(FilledRoundedCornerButtonStyle(
                            bgColor: Color(themeSource.selectedTheme.primaryColor),
                            fgColor: Color(themeSource.selectedTheme.secondaryColor))
            )
            .navigationBarTitle("Destination View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DestinationView()
                .environmentObject(ThemeSource())
        }
    }
}

