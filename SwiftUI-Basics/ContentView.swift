//
//  ContentView.swift
//  SwiftUI-Basics
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 29) {
                    Text("Edit Profile")
                        .font(.system(size: 20, weight: .bold))
                    
                    Image("Image")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color(red: 0.14, green: 0.15, blue: 0.38), lineWidth: 1)
                                .padding(-5)
                        )
                        .overlay(alignment: .bottomTrailing, content: {
                            Image(systemName: "camera.fill")
                                .foregroundStyle(Color(red: 36/255, green: 39/255, blue: 96/255))
                                .font(.system(size: 24))
                                .padding(.bottom)
                        })
                    
                    VStack(spacing: 16) {
                        TextFields(title: "Name", placeholder: "Gela", isSecure: false)
                        TextFields(title: "Email", placeholder: "GelaGnolidze@gmail.com", isSecure: false)
                        TextFields(title: "Password", placeholder: "********", isSecure: true)
                        TextFields(title: "Date of Birth", placeholder: "29/02/1782", isSecure: false)
                        TextFields(title: "Country/Region", placeholder: "USA", isSecure: false)
                    }
                    
                    Button(action: {
//                        NavigationLink( <#LocalizedStringKey#>, destination: SecondPage()) - es ver gavige ratom ar gadadis
                    }, label: {
                        ActionButton(title: "Save changes")
                    })
                }
                .padding(.horizontal, 25)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

