//
//  PostsViewModel.swift
//  Socialcademy
//
//  Created by Yasin Şükrü Tan on 15.12.2022.
//

import Foundation


@MainActor
class PostsViewModel: ObservableObject {
    @Published var posts = [Post.testPost]
    
    func makeCreateAction() -> NewPostForm.CreateAction {
        return { [weak self] post in
            self?.posts.insert(post, at: 0)
        }
    }
}
