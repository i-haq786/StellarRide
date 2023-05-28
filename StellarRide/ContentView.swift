//
//  ContentView.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

struct ContentView: View {
    
    let carouselItems = ["image2", "image1", "image3", "image4", "image5"]
    let scrollItems = ["image-1", "image-2", "image-3", "image-4", "image-5","image-6", "image-7", "image-8", "image-9", "image-10"]
    @State private var isLoading = true
    
    var body: some View {
        
        ZStack {
            VStack {
                ScrollView(){
                    VStack(alignment: .leading){
                        TopBar()
                        HScroll(items: carouselItems)
                        
                        Text("Feeling adventurous?")
                            .font(.title.weight(.bold))
                            .foregroundColor(Color("primary"))
                        
                        
                        Text("Get inspiration from these trending\ncategories:")
                            .foregroundColor(Color("secondary"))
                        
                        
                        
                        VScroll(items: scrollItems)
                    }
                }
                Spacer()
                
                
                TabBar()
                    .padding(.horizontal, 10)
                    .padding(.bottom, -30)
            }
            .padding(20)
            .padding(.top, -20)
            .background(Color("bgcolor"))
          
            if isLoading {
                Loading()
            }
        }
        .onAppear {
            // Simulate a loading delay
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isLoading = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
