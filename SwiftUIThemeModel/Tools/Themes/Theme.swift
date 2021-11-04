//
//  Theme.swift
//  SwiftUIThemeModel
//
//  Created by Amir Hatami on 2021-11-04.
//

import UIKit

protocol Theme {
    var primaryColor: UIColor { get }
    var secondaryColor: UIColor { get }
    var labelColor: UIColor { get }
    var themeName: String { get }
}
