//
//  ContentView.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

struct ContentView: View {
    
    let carouselItems = ["image1", "image2", "image3", "image4", "image5"]
    let scrollItems = ["image-1", "image-2", "image-3", "image-4", "image-5","image-6", "image-7", "image-8", "image-9", "image-10"]
    
    var body: some View {
        VStack {
            ScrollView(){
                TopBar()
                HScroll(items: carouselItems)
                
                
                    VStack(alignment: .leading) {
                        Text("Feeling adventurous?")
                            .font(.title.weight(.bold))
                            .foregroundColor(Color("primary"))
                            
                        
                        Text("Get inspiration from these trending\ncategories:")
                            .foregroundColor(Color("secondary"))
                    }
                    .padding(.leading, -50)
            
                VScroll(items: scrollItems)
            }
            Spacer()
            
            TabBar()
                .padding(.horizontal, 10)
                
        }
        .padding(20)
        .background(Color("bgcolor"))}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
