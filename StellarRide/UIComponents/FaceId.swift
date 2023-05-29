//
//  FaceId.swift
//  StellarRide
//
//  Created by Inzamam on 29/05/23.
//
import SwiftUI

struct FaceId: View {
    @State private var isFaceIDAuthenticated = false
    let customColor = Color("accent")
    let customColor2 = Color.yellow
    var body: some View {
        VStack {
            Image(systemName: isFaceIDAuthenticated ? "faceid" : "faceid.unlocked")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .foregroundColor(isFaceIDAuthenticated ? customColor : .yellow)
                .animation(.easeInOut)
        }
        .onAppear {
            startAuthentication()
        }
    }
    
    func startAuthentication() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            withAnimation {
                isFaceIDAuthenticated = true
            }
        }
    }
}

struct FaceIdView: View {
    var body: some View {
        FaceId().background(Color("bgcolor"))
    }
}

struct FaceId_Previews: PreviewProvider {
    static var previews: some View {
        FaceIdView()
    }
}
