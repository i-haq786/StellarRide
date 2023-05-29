//
//  BookingSeats.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//
//
import SwiftUI
var cost = 345
struct CarouselView3: View {
    let numbers = Array(1...10)
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(numbers, id: \.self) { number in
                    VStack {
                        Button(action: {
                            
                        }){
                            Text("\(number)")
                                .font(.system(size: 124, weight: .heavy))
                                .foregroundColor(Color("primary"))
                        }
                       
                    }
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct BookingSeats: View {
    @State private var includeChildren = false

    var body: some View {
        VStack(alignment: .center) {
            Text("How many adults?")
                .font(.title2.weight(.bold))
                .foregroundColor(Color("primary"))
            Text("12 Years+")
                .font(.title3.weight(.medium))
                .foregroundColor(Color("primary"))
             
            
            CarouselView3()

            
            Toggle(isOn: $includeChildren) {
                Text("Include Children")
                    .font(.subheadline)
                    .foregroundColor(Color("primary"))
            }
            .padding()
            
            if includeChildren {
                CarouselView3()
            }
    
            
            Text("Cost: ₹\(includeChildren ? cost * 2 : cost)")
                .font(.title.weight(.bold))
                .foregroundColor(Color("primary"))
                .padding(.top, 20)
            Spacer()
            
            
        }
        .background(Color("accent"))
    }
}

struct BookingSeats_Previews: PreviewProvider {
    static var previews: some View {
        BookingSeats()
    }
}
