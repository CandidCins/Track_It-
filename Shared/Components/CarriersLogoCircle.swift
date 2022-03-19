//
//  CarriersLogoCircle.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/16/22.
//
//
 //This is the code for the multi-carrier logo icon
import SwiftUI

struct CarriersLogoCircle: View {
    
    //MARK: BODY
    var body: some View {
        
        HStack(spacing: 0) {
            
            VStack{
                
                Image("USPSLOGO")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .scaledToFill()
                    .offset(x: 20, y: 7)
                
                Image("UPSLOGO")
                    .resizable()
                    .frame(width: 10, height: 10)
                    .scaledToFill()
                    .offset(x: 11, y: 5)

                Image("FEDEXLOGO")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .scaledToFill()
                    .offset(x: 25, y: -5)

            }// END: VSTACK
            .scaledToFit()
            .frame(width: 50,
                   height: 50,
                   alignment: .center
            )
            
            Image("DHLLOGO")
                .resizable()
                .frame(width: 25, height: 25)
                .scaledToFill()
//                .padding()
            
        }// END: HSTACK
        .frame(width: 25, height: 50, alignment: .trailing)
    }//END: BODY
}

//MARK: PREVIEW PROVIDER
struct CarriersLogoCircle_Previews: PreviewProvider {
    static var previews: some View {
        CarriersLogoCircle()
//            .previewLayout(.sizeThatFits)
    }
}
