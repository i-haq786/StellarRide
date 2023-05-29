//
//  TicketConfirmationPage.swift
//  StellarRide
//
//  Created by Inzamam on 29/05/23.
//

import SwiftUI

struct TicketConfirmationPage: View {
    var body: some View {
        ZStack {
            
            Color("accent").edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
               
                TickMarkAnimation()
                    .padding(.top,100)
                
                Text("A summary has been sent to your inbox")
                    .font(.title3)
                    .foregroundColor(.white)
                
                TicketBoxView()
                
                Spacer()
            }
            .padding()
        }
    }
}

struct TickMarkAnimation: View {
    @State private var rotationAngle: Double = 0.0
    
    var body: some View {
        Image(systemName: "checkmark")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 40, height: 40)
            .foregroundColor(.white)
          
    }
}

struct TicketBoxView: View {
    var body: some View {
        ZStack {
           
                Image("Image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    .frame(width: 350, height: 750)
            VStack{
                Text("")
                    .font(.title2.weight(.regular))
                    .padding(.top, 100)
                    .padding(.bottom, 410)
                    .foregroundColor(Color("primary"))
                
                Text("Ticket for 5")
                    .font(.title2.weight(.regular))
                    .foregroundColor(Color("primary"))
                Text("Booking Confirmed")
                    .font(.title2.weight(.regular))
                    .foregroundColor(Color("primary"))
                    .padding(.bottom,300)
            }
            .frame(height: 500)
            VStack{
                Text("Booking Id: XAFGH549JXT ")
                    .font(.title2.weight(.regular))
                    .padding(.top, 100)
                    .padding(.bottom, 570)
                    .foregroundColor(Color("primary"))
            }
            
        }
        .frame(height: 750)
        
    }
}

struct TicketConfirmationPage_Previews: PreviewProvider {
    static var previews: some View {
        TicketConfirmationPage()
    }
}
