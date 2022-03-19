//
//  Track_It_App.swift
//  Shared
//
//  Created by Dj Addison on 3/15/22.
//

import SwiftUI

@main
struct Track_It_App: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
