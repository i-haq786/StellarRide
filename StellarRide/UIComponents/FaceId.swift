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
    var body: some View {
        VStack {
            Image(systemName: isFaceIDAuthenticated ? "faceid" : "faceid.unlocked")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .foregroundColor(isFaceIDAuthenticated ? customColor : .yellow)
                .animation(.easeInOut)
        }.frame(width: 450, height: 950)
        .background(Color("bgcolor"))
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
        FaceId()

    }
}

struct FaceId_Previews: PreviewProvider {
    static var previews: some View {
        FaceIdView()
    }
}
