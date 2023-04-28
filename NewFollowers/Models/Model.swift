//
//  Model.swift
//  NewFollowers
//
//  Created by Serezha on 25.04.2023.
//

import Foundation

class Followers: Identifiable, Decodable {
    var id:UUID?
    var title:String?
    var media_list_data:[String]?
    var string_list_data:[MyFollowers]
}

class MyFollowers: Identifiable, Decodable {
    var id:UUID?
    var href:String
    var value:String
    var timestamp:Int
}
