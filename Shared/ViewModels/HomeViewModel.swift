//
//  HomeViewModel.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/16/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allPackages: [Package] = []
    
    init() {
        self.allPackages.append(Package(trackingNumber: "3529575235792",
                                        carrier: "UPS",
                                        description: "COMPUTER PARTS",
                                        status: "En Route"))
    }
}
