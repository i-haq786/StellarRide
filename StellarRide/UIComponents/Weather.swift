//
//  Weather.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI


struct WeatherCard: View {
    var temperature = 32
    var rain = "Light rain"
    let degreeSymbol = "\u{00B0}"
    var body: some View {
        ZStack {
            Image("blackbg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 5)
                .opacity(0.7)
            

            VStack(alignment: .leading) {
                HStack {

                    Image(systemName: "cloud.rain")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 40)
                        .foregroundColor(Color("primary"))
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading) {
                        Text("WEATHER NOW")
                            .font(.subheadline)
                            .foregroundColor(Color("primary"))
                        
                        Text("\(temperature) \(degreeSymbol)C - \(rain)")
                            .font(.headline.bold())
                            .foregroundColor(.white)
                            
                    }
                    Spacer()
                }.padding(20)
            }
        }
        .frame(width: 250, height: 90)
        .cornerRadius(10)
    }
}

struct Weather: View {
    var body: some View {
        WeatherCard()
            .padding()
    }
}

struct Weather_Previews: PreviewProvider {
    static var previews: some View {
        Weather().background(.black)
    }
}
