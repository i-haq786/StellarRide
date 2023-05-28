//
//  TopBar.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack {
            
            VStack(alignment: .leading) {
                Text("Discover")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(Color("primary"))
                
                Text("Trending locations today")
                    .font(.system(size: 19, weight: .semibold))
                    .foregroundColor(Color("secondary"))
                
            }
            
            Spacer()
            
            ZStack {
                Image(systemName: "line.3.horizontal.decrease")
                    .font(.system(size: 24))
                
                Circle()
                .foregroundColor(.red)
                .frame(width: 8, height: 8)
                .offset(x: 6, y: -6)
            }
            
            Image(systemName: "person.circle")
                .font(.system(size: 30))
            
        }
        .foregroundColor(Color("primary"))
    }
}


struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
