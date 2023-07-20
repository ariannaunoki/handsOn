//
//  homeView.swift
//  handsOn
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct homeView: View {
    @Binding var name : String
    var body: some View {
        TabView {
            mapView(name : $name)
                .tabItem() {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            listView()
                .tabItem() {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            reflectView()
                .tabItem() {
                    Image(systemName: "pencil.line")
                    Text("Reflect")
                }
        }
        .onAppear() {
            UITabBar.appearance()
                .backgroundColor = .white
        }
    }
}

struct homeView_Previews: PreviewProvider {
    @State static var name : String = ""
    static var previews: some View {
        homeView(name : $name)
        
    }
}
