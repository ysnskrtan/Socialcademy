//
//  ContentView.swift
//  Socialcademy
//
//  Created by Yasin Şükrü Tan on 13.12.2022.
//

import SwiftUI

struct PostsList: View {
    @StateObject var viewModel = PostsViewModel()
    
    @State private var searchText = ""
    @State private var showNewPostForm = false
    
    var body: some View {
        NavigationView {
            List(viewModel.posts) { post in
                if searchText.isEmpty || post.contains(searchText) {
                    PostRow(post: post)
                }
            }
            .toolbar {
                Button {
                    showNewPostForm = true
                } label: {
                    Label("New Post", systemImage: "square.and.pencil")
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Posts")
        }
        .sheet(isPresented: $showNewPostForm) {
            NewPostForm(createAction: viewModel.makeCreateAction())
        }
    }
}

struct PostsList_Previews: PreviewProvider {
    static var previews: some View {
        PostsList()
    }
}
