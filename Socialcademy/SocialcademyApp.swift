//
//  SocialcademyApp.swift
//  Socialcademy
//
//  Created by Yasin Şükrü Tan on 13.12.2022.
//

import SwiftUI
import Firebase

@main
struct SocialcademyApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            PostsList()
        }
    }
}
