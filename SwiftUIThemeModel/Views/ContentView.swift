//
//  ContentView.swift
//  SwiftUIThemeModel
//
//  Created by Pooya on 2021-11-04.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var themeSource: ThemeSource
    @State private var showModal = false
    @State private var showDestination = false
    var body: some View {
        NavigationView {
            ScrollView {
                Button("Available Themes") {
                    showModal = true
                }
                .padding(.top)
                NavigationLink(
                    destination: DestinationView(),
                    isActive: $showDestination,
                    label: {
                        Button("Next Page") {
                            showDestination = true
                        }
                    })
                Text(Sample.veryLongText)
                    .foregroundColor(Color(themeSource.selectedTheme.labelColor))
                    .padding()
            }
            .buttonStyle(FilledRoundedCornerButtonStyle(
                            bgColor: Color(themeSource.selectedTheme.primaryColor),
                            fgColor: Color(themeSource.selectedTheme.secondaryColor))
            )
            .navigationTitle("Theme Model")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $showModal) {
            ThemeSelectView()
        }
        .appearanceModifier(backgroundColor: themeSource.selectedTheme.primaryColor,
                            textColor: themeSource.selectedTheme.secondaryColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ThemeSource())
    }
}

