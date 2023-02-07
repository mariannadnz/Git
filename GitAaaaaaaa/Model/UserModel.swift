//
//  InfoModel.swift
//  GitHub
//
//  Created by unicred on 01/02/23.
//


import UIKit

// Codable vai servir para identificar todos os snake_cases presentes na api e converte-los para camelCase.
struct UserModel: Codable {
    var login: String
    var id: Int
    var avatarUrl: String?
    var name: String?
    var bio: String?
    var publicRepos: Int
    var followers: Int
    var following: Int
    var reposUrl: String
}
