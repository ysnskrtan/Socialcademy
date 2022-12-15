//
//  NewPostForm.swift
//  Socialcademy
//
//  Created by Yasin Şükrü Tan on 15.12.2022.
//

import SwiftUI

struct NewPostForm: View {
    typealias CreateAction = (Post) -> Void
    let createAction: CreateAction
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var post = Post(title: "", content: "", authorName: "")
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Title", text: $post.title)
                    TextField("Author Name", text: $post.authorName)
                }
                Section("Content") {
                    TextEditor(text: $post.content)
                        .multilineTextAlignment(.leading)
                }
                Button(action: createPost) {
                    Text("Create Post")
                }
                .font(.headline)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .listRowBackground(Color.accentColor)
            }
            .onSubmit(createPost)
            .navigationTitle("New Post")
        }
    }
    
    private func createPost() {
        createAction(post)
        dismiss()
    }
}

struct NewPostForm_Previews: PreviewProvider {
    static var previews: some View {
        NewPostForm(createAction: { _ in })
    }
}
