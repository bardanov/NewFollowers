//
//  TabMenu.swift
//  NewFollowers
//
//  Created by Serezha on 26.04.2023.
//

import SwiftUI

struct TabMenu: View {
    @State var tabIndex = "first"
    var body: some View {
        
        TabView(selection: $tabIndex) {
            
            Text("Welcome")
                .font(.title)
                .foregroundColor(.purple)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Welcome")
                }.tag("first")
            
            FollowersView()
                .tabItem {
                    Image(systemName: "bird")
                    Text("Followers")
                }.tag("second")
            
        }
    }
}

struct TabMenu_Previews: PreviewProvider {
    static var previews: some View {
        TabMenu()
    }
}
