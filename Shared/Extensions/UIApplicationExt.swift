//
//  UIApplicationExt.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/15/22.
//
 //This code extends UIAPPLICATION class
 //to dismiss keyboard after clearing the field

import Foundation
import SwiftUI

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
