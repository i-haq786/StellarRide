//
//  Loading.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

struct Loading: View {
    var body: some View {
        ZStack {
            Color("bgcolor") // Set the background color of the loading screen
            
            ProgressView()// Show the progress view
                .progressViewStyle(CircularProgressViewStyle())
                .tint(.white)
               // Customize the style if desired
            
            // You can also add additional views or text to provide more context or branding
            
        }
        .ignoresSafeArea()
    }
}


struct Loading_Previews: PreviewProvider {
    static var previews: some View {
        Loading()
    }
}
