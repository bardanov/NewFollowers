//
//  ContentView.swift
//  NewFollowers
//
//  Created by Serezha on 25.04.2023.
//

import SwiftUI

struct FollowersView: View {
    @ObservedObject var model = FollowersModel()
    var body: some View {
        
        NavigationView {
            List(model.followers) { f in
                ForEach(f.string_list_data) { s in
                    Text(s.value)
                        .foregroundColor(.purple)
                }
                
            
            }.navigationTitle("They follow you:")
            
        }
        
        
        }

        }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            FollowersView()
        }
    }

