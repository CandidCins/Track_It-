//
//  PackageModel.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/16/22.
//

import Foundation
import SwiftUI

struct Package: Identifiable {
    let id = UUID().uuidString
    let trackingNumber: String
    let carrier: String// make an enum?
    let description: String
    let status: String// make an enum?
}
