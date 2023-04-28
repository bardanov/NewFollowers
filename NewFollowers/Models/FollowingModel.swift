//
//  FollowingModel.swift
//  NewFollowers
//
//  Created by Serezha on 26.04.2023.
//

import Foundation

class Following: Identifiable, Decodable {
    var id:UUID?
    var relationships_following:[Following2]
}

class Following2: Identifiable, Decodable {
    var id:UUID?
    var title:String?
    var media_list_data:[String]?
    var string_list_data:[Following3]
}

class Following3: Identifiable, Decodable {
    var id:UUID?
    var href:String
    var value:String
    var timestamp:Int
}
