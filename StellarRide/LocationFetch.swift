//
//  LocationFetch.swift
//  StellarRide
//
//  Created by Inzamam on 29/05/23.
//
import SwiftUI

struct LocationView: View {
    @State private var isLoading = true
    
    var body: some View {
        ZStack {
         
            if !isLoading {
                NextPageView()
            }
            
            VStack {
                ZStack {
                    VStack {
                        Circle()
                            .trim(from: 0, to: 0.7)
                            .stroke(Color("accent"), lineWidth: 10)
                            .rotationEffect(Angle(degrees: isLoading ? 0 : 360))
                            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                            .frame(width: 80, height: 80)
                        
                        
                        Text("Fetching Location")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("bgcolor"))
            .opacity(isLoading ? 1 : 0)
            .animation(.easeInOut(duration: 0.3))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    isLoading = false
                }
            }
        }
    }
}

struct NextPageView: View {
    var body: some View {
        ScheduleTrip()
    }
}

struct LocationFetch_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}

