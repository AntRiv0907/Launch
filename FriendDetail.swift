//
//  FriendDetail.swift
//  MoviesWithFriends
//
//  Created by student on 5/17/25.
//

import SwiftUI

struct FriendDetail: View {
    @Bindable var friend: Friend
    
    
    var body: some View {
        Form {
            TextField("Name", text: $friend.name)
                .autocorrectionDisabled()
        }
        .navigationTitle("Friend Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        FriendDetail(friend: SampleData.shared.friend)
    }
}
