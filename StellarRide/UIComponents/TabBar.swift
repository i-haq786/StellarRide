//
//  TabBar.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//



import SwiftUI

struct TabBar: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("bgcolor"))
                .frame(width: .infinity, height: 70)
                .blur(radius: 2.5)
            HStack {
                
                TabItemView(systemName: "house", isSelected: selectedTab == 0)
                    .onTapGesture {
                        selectedTab = 0
                    }
                
                Spacer()
                
                TabItemView(systemName: "map", isSelected: selectedTab == 1)
                    .onTapGesture {
                        selectedTab = 1
                    }
                
                Spacer()
                
                TabItemView(systemName: "magnifyingglass", isSelected: selectedTab == 2)
                    .onTapGesture {
                        selectedTab = 2
                    }
                
                Spacer()
                
                TabItemView(systemName: "person", isSelected: selectedTab == 3)
                    .onTapGesture {
                        selectedTab = 3
                    }
              
            }
            .foregroundColor(Color("accent"))
           
        }
    }
}

struct TabItemView: View {
    let systemName: String
    let isSelected: Bool
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(isSelected ? Color("accent") : Color("secondary"))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
