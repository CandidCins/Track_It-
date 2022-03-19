//
//  ColorExt.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/15/22.
//
 //This code extends the Swift built-in Color struct
 //for easier switching of theme color on views

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
}
