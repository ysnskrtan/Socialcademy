//
//  User.swift
//  Socialcademy
//
//  Created by Yasin Şükrü Tan on 23.12.2023.
//

import Foundation

struct User: Identifiable, Equatable, Codable {
    var id: String
    var name: String
}

extension User {
    static let testUser = User(id: "", name: "Yasin")
}
