//
//  ScheduleTrip.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI

struct ScheduleTrip: View {
    var body: some View {

        VStack {
            TopBar2(topic: "Schedule Trip")
                .background(Color("bgcolor"))
                .padding(.top, 10)
            Spacer()
            Divider().background(Color.secondary)
            CalendarViews()
            .frame(height: 300)
            Spacer()
        }.background(Color("bgcolor"))
        
    }
}

struct ScheduleTrip_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleTrip()
    }
}
