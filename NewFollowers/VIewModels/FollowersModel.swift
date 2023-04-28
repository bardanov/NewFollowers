//
//  FollowersModel.swift
//  NewFollowers
//
//  Created by Serezha on 25.04.2023.
//

import Foundation

class FollowersModel: ObservableObject {
    @Published var followers = [Followers]()
    
    init() {
        followers = dataService.getJsonData()
    }
}
