//
//  ViewModelFactory.swift
//  Socialcademy
//
//  Created by Yasin Şükrü Tan on 24.12.2023.
//

import Foundation

@MainActor
class ViewModelFactory: ObservableObject {
    private let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func makePostsViewModel(filter: PostsViewModel.Filter = .all) -> PostsViewModel {
        return PostsViewModel(filter: filter, postsRepository: PostsRepository(user: user))
    }
}

#if DEBUG
extension ViewModelFactory {
    static let preview = ViewModelFactory(user: User.testUser)
}
#endif
