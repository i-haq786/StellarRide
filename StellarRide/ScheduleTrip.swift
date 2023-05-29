//
//  ScheduleTrip.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

struct ScheduleTrip: View {
    @State private var selectedBox: Int?
    @State private var isClicked = false
   
    var body: some View {
        
        VStack {
            TopBar2(topic: "Schedule Trip")
                .background(Color("bgcolor"))
                .padding(.top, 10)
                .padding(.bottom, 20)
            locationCard()
                .padding(10)
            
            Text("__________________________________________")
                .foregroundColor(Color("primary"))
                .font(.title3.weight(.ultraLight))
                .padding(.bottom, 10)
            
            Text("Trip Calendar")
                .font(.title.weight(.bold))
                .foregroundColor(Color("primary"))
            
            
            ZStack(alignment: .topTrailing) {
                CalendarViews()
                    .frame(height: 340)
                
                Image(systemName: "chevron.right")
                    .font(.title2)
                    .foregroundColor(Color("primary"))
                    .frame(width: 20)
                    .padding(20)
                    .background(Color("bgcolor")).blur(radius: 1)
                    .cornerRadius(40)
            }
            
            Text("DEPARTURE TIME").foregroundColor(Color("primary"))
                .font(.title3.weight(.regular))
            TimeSlots()
           
            
            Spacer()
        } .background(Color("bgcolor"))
        
    }
    
    
    
    
    func getTimeString(index: Int) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mma"
        let date = Calendar.current.date(bySettingHour: 7, minute: index * 30, second: 0, of: Date())!
        return dateFormatter.string(from: date)
    }
}

struct ScheduleTrip_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleTrip()
    }
}
