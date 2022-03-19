//
//  SearchBarView.swift
//  Track_It! (iOS)
//
//  Created by Dj Addison on 3/15/22.
//
//
/*
 this view contains the code for
 the search bar in the home view
 */

import SwiftUI

struct SearchBarView: View {
    
    //MARK: PROPERTIES
    
    @Binding var searchText: String
    
    //MARK: BODY
    var body: some View {
        
        HStack {
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            
            TextField("Search by Description", text: $searchText)
                .foregroundColor(.black)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(.theme.accent)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture(perform: {
                            UIApplication.shared.dismissKeyboard()
                            searchText = ""
                        })
                    , alignment: .trailing
                )// END: OVERLAY
        }// END: HSTACK
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(.ultraThickMaterial)
        )
        
    }// END: BODY
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: Binding.constant(""))
    }
}
