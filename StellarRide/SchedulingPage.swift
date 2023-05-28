//
//  SchedulingPage.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

struct SchedulingPage: View {
    var body: some View {
        ZStack{
            Image("image1")
                .blur(radius: 3.5)
                .opacity(0.99)
            
            VStack(alignment: .center) {
                TopBar2()
                Spacer()
                Text("Santorini")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(Color("primary"))
                Weather()
                
                Text("Santorini is the largest city in the New Osogbo structure. It has a substantial atmosphere and is the most Earth-like satellite in the Solar System.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("primary"))
                    .frame(width: 350)
                Spacer()
                HStack(spacing: 10) {
                    HStack {
                        Image(systemName: "gamecontroller")
                            .font(.system(size: 25))
                            .foregroundColor(Color("accent"))
                            .padding(.trailing, 10)
                        Text("VR")
                            .foregroundColor(Color("primary"))
                            .padding(.trailing, 30)
                        
                       
                    }
                    Spacer()
                    
                    Divider().background(Color.white)
                    
                    Spacer()
                    HStack {
                        Image(systemName: "camera.fill")
                            .font(.system(size: 25))
                            .foregroundColor(Color("accent"))
                            .padding(.trailing, 10)
                        Text("Gallery")
                            .foregroundColor(Color("primary"))
                            .padding(.trailing, 10)
                    }
                }
                .padding()
                .frame(width: 350, height: 70)
                .padding(.bottom, 20)
                
                
                
                Button(action: {
                   
                    
                }) {
                    HStack(alignment: .center) {
                        Spacer()
                        Text("SCHEDULE TRIP")
                        .foregroundColor(Color("primary"))
                        .font(.title2.bold())
                        Spacer()
                    }
                }
                .frame(width: 300, height: 50)
                .foregroundColor(Color("primary"))
                .padding()
                .background(Color("accent"))
                .cornerRadius(20)
                .padding(.bottom, 30)
            }
            .frame(height: 760)
        }
    }
}

struct SchedulingPage_Previews: PreviewProvider {
    static var previews: some View {
        SchedulingPage()
    }
}
