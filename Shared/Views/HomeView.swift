//
//  HomeView.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/15/22.
//

import SwiftUI

struct HomeView: View {
    // MARK: PROPERTIES
    
    @EnvironmentObject private var vm: HomeViewModel
    @State var searchText = ""
    
    // MARK: BODY
    
    var body: some View {
        
        VStack {
            
            NavBar
            
            SearchBarView(searchText: $searchText)
            
            // Displays the List of all packages status
            List {
                ForEach(vm.allPackages) { package in
                    PackageStatusRowView(package: package)
                }
            }
            .overlay( AddTrackingButton()
                    .opacity(0.5)
                    .offset(y: 200)
            )
        } // END: VSTACK
    }// END: BODY
}


//MARK: PREVIEW PROVIDER
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(HomeViewModel())
    }
}

// MARK: EXTENSION
extension HomeView {
    /// This is the variable that contains the  views of the navigation bar
    private var NavBar: some View {
        
        HStack{
            Image(systemName: "line.3.horizontal")
                .foregroundColor(Color.theme.accent)
                .frame(width: 50, height: 50)
            
            Spacer()
            
            Text("Home")
                .font(.headline)
            
            Spacer()
            
            Image(systemName: "camera.fill")
                .foregroundColor(.white)
                .frame(width: 50, height: 50)
                .background(
                    Circle()
                        .fill(Color.theme.accent)
                        .frame(width: 40, height: 30)
                )
        }// END: HSTACK
        .padding(.horizontal)
    }
} // END: EXTENSION
