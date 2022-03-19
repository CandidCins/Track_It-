//
//  AddTrackingView.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/16/22.
//
 // This code contains the view for the user
// to add a new package to their list on the app

import SwiftUI

struct AddTrackingView: View {
    
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject private var vm: HomeViewModel
    @State var trackingText = ""
    @State var carrierText = ""
    @State var packageDescription = ""
    
    //MARK: BODY
    var body: some View {
        
        // detailed code for these variables can be found
        // in extension section at the bottom
        
        VStack(spacing: 15) {
            
            TrackingField
        
            CarrierField
            
            descriptionField
            
            trackButton
            
        }// END: VSTACK
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                BackButton(backButtonText: "Home")
            }
        }
    }// END: BODY
    
    
    //MARK: FUNCTIONS
    
    func addPackageTracking(number: String, carrier: String, description: String) {
        let newPackage = Package(trackingNumber: number,
                                 carrier: carrier.uppercased(),
                                 description: description,
                                 status: "En Route")
        
        vm.allPackages.append(newPackage)
        
        trackingText = ""
        carrierText = ""
        packageDescription = ""
    }// END: FUNC
    
}

//MARK: PREVIEW PROVIDER
struct AddTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddTrackingView()
                .environmentObject(HomeViewModel())
        }
    }
}

//MARK: EXTENSION
extension AddTrackingView{
    
    ///Variable contains icon & textfield next to it
    var TrackingField: some View {
    
    HStack {
        
        Image(systemName: "barcode.viewfinder")
            .resizable()
            .scaledToFit()
            .foregroundColor(.theme.accent.opacity(0.2))
            .frame(width: 25, height: 50, alignment: .leading)
            .padding()
        
        TextField("Tracking Number", text: $trackingText)
            .padding(.horizontal,50)
            .font(.system(size: 20, weight: .semibold, design: .default))
            .frame(width: 300, height: 100, alignment: .leading)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
                    .frame(width: 300, height: 100))
        
    }
    .foregroundColor(.gray)
}// END: TRACKING FIELD
    
    ///Variable contains icon & textfield next to it
    var CarrierField: some View {
        
        HStack {
            CarriersLogoCircle()
                .offset(x: 10)
                .padding()
            
            TextField("Select Carrier", text: $carrierText)
                .padding(.horizontal,50)
                .font(.system(size: 20, weight: .semibold, design: .default))
                .frame(width: 300, height: 100, alignment: .leading)
                .overlay( RoundedRectangle(cornerRadius: 10)
                        .stroke()
                        .frame(width: 300, height: 100))
            
        }// END: HSTACK
        .foregroundColor(.gray)
        
    }// END: CARRIER FIELD
    
    ///Variable contains icon & textfield next to it
    var descriptionField: some View {
        
        HStack {
            
            Image(systemName: "text.bubble.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.theme.accent.opacity(0.6))
                .frame(width: 25,
                       height: 50,
                       alignment: .leading)
                .padding()
            
            TextField("Package Description", text: $packageDescription)
                .padding(.horizontal,50)
                .font(.system(size: 20,
                              weight: .semibold,
                              design: .default))
                .frame(width: 300,
                       height: 100,
                       alignment: .leading)
                .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke()
                        .frame(width: 300, height: 100))
            
        }// END: HSTACK
        .foregroundColor(.gray)
        
    }// END: DESCRIPTION FIELD
    
    ///Variable contains code for button
    var trackButton: some View {
        
        Text("Start Tracking")
            .foregroundColor(.white)
            .font(.system(size: 25,
                          weight: .regular,
                          design: .default))
            .padding()
            .background(RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.theme.accent)
                    .frame(width: 350, height: 50)
                    .onTapGesture(perform: {addPackageTracking(number: trackingText,
                                           carrier: carrierText.uppercased(),
                                           description: packageDescription)
                        
                        presentationMode.wrappedValue.dismiss()
                    })// END: TAP GESTURE
            )
            .opacity(
                carrierText.isEmpty ||
                trackingText.isEmpty ||
                packageDescription.isEmpty ? 0.5 : 1
            )
    }// END: TRACK BUTTON
    
}
