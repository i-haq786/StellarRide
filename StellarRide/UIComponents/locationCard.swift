//
//  locationCard.swift
//  StellarRide
//
//  Created by Inzamam on 29/05/23.
//

import SwiftUI

struct locationCard: View {
    var body: some View {
            VStack {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .font(.title)
                        .foregroundColor(.red)
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading) {
                        Text("LAGOS, LOS")
                            .font(.title3)
                        .foregroundColor(Color("primary"))
                        
                        Text("From Nigeria")
                            .font(.subheadline)
                        .foregroundColor(Color("primary"))
                    }
                 Spacer()
                } .padding(.bottom, 10)
                
                
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .font(.title)
                        .foregroundColor(.green)
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading) {
                        Text("Santorini, Chevok Port 2")
                            .font(.title3)
                        .foregroundColor(Color("primary"))
                        
                        Text("To New OSOGBO")
                            .font(.subheadline)
                        .foregroundColor(Color("primary"))
                    }
                 Spacer()
                }
            }.frame(maxWidth: 400)
         
            
    }
}

struct locationCard_Previews: PreviewProvider {
    static var previews: some View {
        locationCard().background(.black)
    }
}
