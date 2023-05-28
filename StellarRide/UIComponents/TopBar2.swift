//
//  TopBar2.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

struct TopBar2: View {
    
    var topic : String?
    
    var body: some View {
        
        HStack {
            Image(systemName: "chevron.left")
                .font(.title2)
                .foregroundColor(Color("primary"))
                .frame(width: 20)
                .padding(.leading, 10)
                .padding(.trailing, 5)
            Spacer()
            Text("\(topic ?? "")")
                .font(.title2.weight(.bold))
                .foregroundColor(Color("primary"))
            Spacer()
            Image(systemName: "ellipsis")
                .font(.title2)
                .foregroundColor(Color("primary"))
                .frame(width: 20)
                .padding(.trailing, 5)
                .rotationEffect(.degrees(90))
        }.frame(width: 400)
        
    }
}

struct TopBar2_Previews: PreviewProvider {
    static var previews: some View {
        TopBar2(topic: "NEW OSOGBO")
            .background(.black)
    }
}
