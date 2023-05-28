//
//  DescriptionBar.swift
//  StellarRide
//
//  Created by Inzamam on 28/05/23.
//

import SwiftUI


struct DescriptionBar: View {
    
    var mode : String?
    var title : String
    var subtitle : String?
    var Cost : String?
    @State private var isModalPresented = false
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Image("oculus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .colorInvert()
                Text(mode ?? "")
                    .font(.title2.weight(.semibold))
                    .foregroundColor(Color("primary"))
            }
            
            HStack {
                VStack {
                    
                    Text(title)
                        .font(.title.weight(.semibold))
                        .foregroundColor(Color("primary"))
                    Text(subtitle ?? "")
                        .font(.title3.weight(.regular))
                        .foregroundColor(Color("secondary"))
                    
                }
                
                Spacer()
                
                Button(action: {
                    isModalPresented = true
                })
                {
                    NavigationLink(destination: ContentView()){
                        Text("₹\(Cost ?? "")")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 16)
                            .background(Color("accent"))
                            .cornerRadius(5)
                    }
                }
                .sheet(isPresented: $isModalPresented) {
                    ModalView()
                }
            }
        }
    }
}


struct ModalView: View {
    var body: some View {
       ContentView2()
    }
}

struct display: View {
    var body: some View{
        VStack {
            DescriptionBar(mode:"VR", title: "Santorini", subtitle: "New Osogbo",Cost: "1200")
        }.background(Color("bgcolor"))
    }
}
struct DescriptionBar_Previews: PreviewProvider {
    static var previews: some View {
        display()
    }
}
