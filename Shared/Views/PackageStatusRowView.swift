//
//  PackageStatusRowView.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/16/22.
//

import SwiftUI

struct PackageStatusRowView: View {
    
    //MARK: PROPERTY
    let package: Package
    
    //MARK: BODY
    var body: some View {
        
        HStack {
            
            Circle()
                .fill(Color.green)
                .frame(width: 25, height: 25, alignment: .leading)
            
            //switch on carrier name to show appropriate logo
            switch package.carrier {
            case "UPS":
                Image("UPSLOGO")
                    .resizable()
                    .scaledToFill()
                    .frame(width:50, height: 50)
                
            case "USPS":
                Image("USPSLOGO")
                    .resizable()
                    .scaledToFill()
                    .frame(width:50, height: 50)

            case "DHL":
                Image("DHLLOGO")
                    .resizable()
                    .scaledToFill()
                    .frame(width:50, height: 50)

            case "FEDEX":
                Image("FEDEXLOGO")
                    .resizable()
                    .scaledToFill()
                    .frame(width:50, height: 50)

            default :
                Image(systemName: "xmark")
            }// END: SWITCH
            
            
            VStack(alignment: .leading, spacing: 5) {
                Text(package.description)
                    .fontWeight(.bold)
                
                Text("\(package.carrier): \(package.trackingNumber)").italic()
                    .foregroundColor(.gray)
                
                Text("\(package.status)").italic()
                    .font(.subheadline)
                    .padding(.horizontal)
                    .overlay(
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 10, height: 10)
                            .offset(x: -45)
                    )
            } //END: VSTACK
            .padding(.horizontal)
            
        } //END: HSTACK
        .frame()
        .cornerRadius(25)
        
    } // END: BODY
}

//MARK: PREVIEW PROVIDER
struct PackageStatusRowView_Previews: PreviewProvider {
    static var previews: some View {
        PackageStatusRowView(package: Package(trackingNumber: "ddafd", carrier: "FEDEX", description: "COPUTER PARTS", status: "NOT DELIVERED"))
    }
}
