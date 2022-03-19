//
//  BackButton.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/17/22.
//
//
/*
 This code is for the resuable back button, for any child view
 */

import SwiftUI

struct BackButton: View {
    
    //MARK: PROPERTY
    @Environment(\.presentationMode) var presentationMode
    @State var backButtonText: String
    
    //MARK: BODY
    var body: some View {
        
        Button(action: {
            presentationMode.wrappedValue.dismiss()
            
        }, label: {
            HStack(spacing: 0) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .font(.headline)
                .padding(20)
                
                Text(backButtonText)
                    .font(.system(size: 20))
                    .offset(x: -15)
                    .font(.headline)
                    .foregroundColor(.black)
                
            } //END: HSTACK
        })//END: Button
    }
}

//MARK: PREVIEW PROVIDER
struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton(backButtonText: "Home")
    }
}
