////
////  TimeSlots.swift
////  StellarRide
////
////  Created by Inzamam on 29/05/23.
////
//


import SwiftUI

struct TimeSlots: View {
    let timeIntervals = ["7:00 AM", "7:30 AM", "8:00 AM", "8:30 AM", "9:00 AM", "9:30 AM", "10:00 AM", "10:30 AM", "11:00 AM", "11:30 AM"]
    @State private var selectedBox: Int?
    @State private var isModalPresented = false

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(0..<timeIntervals.count) { index in
                    Button(action: {
                        selectedBox = index
                        isModalPresented = true
                    }) {
                        Rectangle()
                            .fill(selectedBox == index ? Color("accent") : Color("primary"))
                            .frame(width: 100, height: 50)
                            .cornerRadius(10)
                            .overlay(
                                Text(timeIntervals[index])
                                    .font(.headline)
                                    .foregroundColor(selectedBox == index ? Color("primary") : Color("accent"))
                            )
                    }
                }
            }
            .padding()
        }
        .sheet(isPresented: $isModalPresented) {
            ModalView2()
        }
    }
}

struct ModalView2: View {
    var body: some View {
      BookingSeats()
    }
}

struct TimeSlots_Previews: PreviewProvider {
    static var previews: some View {
        TimeSlots().background(.black)
    }
}
