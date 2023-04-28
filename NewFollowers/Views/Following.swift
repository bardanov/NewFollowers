//
//  Following.swift
//  NewFollowers
//
//  Created by Serezha on 28.04.2023.
//

import SwiftUI

struct Following: View {
    var following:Followers
    var body: some View {
        
        
    }
}

struct Following_Previews: PreviewProvider {
    static var previews: some View {
        let model = FollowersModel()
        Following(following: model.followers[1] as! Decoder)
    }
}
