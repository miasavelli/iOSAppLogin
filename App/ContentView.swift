//
//  ContentView.swift
//  App
//
//  Created by Mia Savelli on 3/20/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.purple
                    .ignoresSafeArea()

                GeometryReader { gr in
                    RoundedRectangle(cornerRadius: 10)
                        .rotation(Angle(degrees: 60))
                        .foregroundColor(.indigo.opacity(0.2))
                    
                    
                    RoundedRectangle(cornerRadius: 10)
                        .scale(x:30, y:80, anchor: UnitPoint(x:1,y:0))
                        .rotation(Angle(degrees: 60))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                }
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.white)
                        
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width:300, height:50)
                        .background(Color.white.opacity(0.6))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width:300, height:50)
                        .background(Color.white.opacity(0.6))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Spacer()
                            
                    
                } // GeometryReader

                
            } // ZStack
        } // NavigationView
    } // body
} // ContentView

#Preview {
    ContentView()
}
