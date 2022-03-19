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
            
             if package.carrier.contains("UPS") ||
                package.carrier.contains("USPS") ||
                package.carrier.contains("DHL") ||
                package.carrier.contains("FEDEX") {
                
                Image("\(package.carrier)LOGO")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
            }// END: IF-STATEMENT
            
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
