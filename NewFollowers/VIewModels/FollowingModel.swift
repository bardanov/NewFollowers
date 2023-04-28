//
//  FollowingModel.swift
//  NewFollowers
//
//  Created by Serezha on 26.04.2023.
//

import Foundation

class FollowingModel: ObservableObject {
    @Published var following = [Following]()
    
    init() {
        following = dataService.getJsonData1()
    }
}
