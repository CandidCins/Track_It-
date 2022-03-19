//
//  AddTrackingButton.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/18/22.
//
//
 // This is the code for the tracking button on the home view
import SwiftUI

struct AddTrackingButton: View {
    
    //MARK: BODY
    var body: some View {
        
        Circle()
            .fill(Color.theme.accent)
            .frame(width: 50, height: 50)
            .overlay(
                NavigationLink {
                    AddTrackingView()
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                })
    }//END: BODY
}

struct AddTrackingButton_Previews: PreviewProvider {
    static var previews: some View {
        AddTrackingButton()
            .previewLayout(.sizeThatFits)
    }
}
