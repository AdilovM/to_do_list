//
//  User.swift
//  To Do List
//
//  Created by Miras Adilov on 8/10/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
