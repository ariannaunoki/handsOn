//
//  ContentView.swift
//  handsOn
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI


extension Color {
  init(hex: UInt32) {
    let red = Double((hex & 0xFF0000) >> 16) / 255.0
    let green = Double((hex & 0x00FF00) >> 8) / 255.0
    let blue = Double(hex & 0x0000FF) / 255.0
    self.init(red: red, green: green, blue: blue)
  }
}


struct ContentView: View {
    
    @State private var name = ""
    @State private var email = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: 0xFFE5D9)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .frame(width: 300, height: 300)
                    
                    Text ("Welcome to HandsOn!")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    TextField("Name", text: $name)
                        .frame(width: 200.0)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .background(Color(hex: 0xFFB3B1))
                        .border(Color.pink)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.pink, lineWidth: 2))
                    
                    TextField("Email", text: $email)
                        .frame(width: 200.0)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .border(Color.pink)
                        .background(Color(hex: 0xFFB3B1))
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.pink, lineWidth: 2))
                    
                    
                    
                    NavigationLink(destination: homeView(name : $name)) {
                        Text("Continue")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.pink)
                            
                        }
                    }
                .navigationBarTitle("")
                                .navigationBarHidden(true)
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
