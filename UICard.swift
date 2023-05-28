//
//  UICard.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

let carouselItems = ["image1", "image2", "image3", "image4", "image5"]

struct UICard: View {
    let items: [String]
    var expanded = true

    var body: some View {
        if(expanded == false)
        {
            VVScroll(items: carouselItems, expanded: true)
        }
        else{
            HHScroll(items: carouselItems, expanded: true)
        }
    }
}


struct HHScroll: View {
    let items: [String]
    var expanded = true
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 20) {
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
        }.padding(.horizontal, -25)
    }
}


    


struct VVScroll: View {
    let items: [String]
    var expanded = true

        var body: some View {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0)], spacing: 10) {
                    ForEach(items, id: \.self) { item in
                        ZStack {
                            Image(item)
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: 150, maxHeight: 90)
                                .background(Color.gray)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            
                            
                            Text("Nature")
                                .font(.title2.weight(.semibold))
                                .foregroundColor(Color("bgcolor"))
                        }
                    }
                }
            }
        }
}


struct UICard_Previews: PreviewProvider {
    static var previews: some View {
        UICard(items: carouselItems, expanded: false)
    }
}
