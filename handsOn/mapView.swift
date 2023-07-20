//
//  mapView.swift
//  handsOn
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct mapView: View {
    @Binding var name : String
    @State var stringList = ["poop", "pee"]
    var body: some View {
        ZStack {
            Color(hex: 0xFFE5D9)
                .ignoresSafeArea()
            VStack{
                VStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        Text("Hello, \(name)!")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Ready to help one hand at a time?")
                            .fontWeight(.medium)
                            .foregroundColor(Color.pink)
                            
                            
                        //.position(x:155, y:-110)
                    }
                    .padding()
                    
                    RealMapView()
                        .frame(width : 350, height : 430)
                        .border(Color.pink, width : 5)
                        .cornerRadius(10)
                    //.position(x:196.5, y: -60)
                    
                }
            }
        }
    }
}

struct mapView_Previews: PreviewProvider {
    @State static var name : String = ""
    static var previews: some View {
        ZStack{
            mapView(name : $name)

        }
    }
}
