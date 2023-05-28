//
//  CalendarView.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI
import SwiftUICalendar

struct CalendarViews: View {
    @ObservedObject var controller: CalendarController = CalendarController(orientation: .vertical)

    var body: some View {
        GeometryReader { reader in
            VStack(alignment: .center, spacing: 0) {

                ScrollView(.horizontal) {
                    HStack(alignment: .center, spacing: 30) {
                        ForEach(0..<12) { i in
                            Text(DateFormatter().monthSymbols[i])
                                .font(.subheadline.bold())
                                .textCase(.uppercase)
                                .padding(10)
                                .padding(.horizontal, 10)
                                .background(Color("accent")).cornerRadius(10)
                                .font(.title2)
                                .foregroundColor(Color("primary"))

                                
                        }
                    }
                }
                .frame(height: 40)
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 15, trailing: 0))
                
                HStack(alignment: .center, spacing: 0) {
                    ForEach(0..<7, id: \.self) { i in
                        Text(DateFormatter().shortWeekdaySymbols[i])
                            .font(.headline)
                            .foregroundColor(Color("primary"))
                            .frame(width: reader.size.width / 7)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                    }
                }
                
                CalendarView(controller /* provide the appropriate value here */) { date in
                    GeometryReader { geometry in
                        ZStack(alignment: .center) {
                            if date.isToday {
                                Circle()
                                    .padding(1)
                                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                                    .foregroundColor(Color("accent"))
                                Text("\(date.day)")
                                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                                    .font(.system(size: 20, weight: .bold, design: .default))
                                    .foregroundColor(Color("primary"))
                                    
                            } else {
                                Text("\(date.day)")
                                    .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                                    .font(.system(size: 18, weight: .regular, design: .default))
                                    .foregroundColor(Color("primary"))
                                    .opacity(date.isFocusYearMonth == true ? 1 : 0.4)
                            }
                        }
                    }
                }
            }
        }
    }
}


struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarViews()
            .background(Color("bgcolor"))
        
       
    }
}

//Selection
//Embed Header
