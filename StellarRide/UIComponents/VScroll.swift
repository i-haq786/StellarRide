//
//  VScroll.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

struct VScroll: View {
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

struct VScroll_Previews: PreviewProvider {
    static var previews: some View {
        VScroll(items: carouselItems, expanded: false)
    }
}
