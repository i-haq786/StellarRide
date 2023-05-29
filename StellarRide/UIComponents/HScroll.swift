//
//  HScroll.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

struct HScroll: View {
    
   
    let items: [String]
    var expanded = true
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack() {
                Spacer()
                ForEach(items, id: \.self) { item in
                    ZStack{
                        Image(item)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        if(expanded){
                            DescriptionBar(
                                mode:"VR",
                                title: "Santorini",
                                subtitle: "New Osogbo",
                                Cost: "1200"
                            )
                            .padding(20)
                            .padding(.top, 250)
                        }
                    }
                    .frame(width: (expanded) ? 335 : 150, height: (expanded) ? 400 : 100)
                    .cornerRadius(10)
                }
            }
            .padding(.horizontal, -20)
        }
    }
}

struct HScroll_Previews: PreviewProvider {
    static var previews: some View {
        HScroll(items: carouselItems, expanded: true)
    }
}
