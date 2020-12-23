//
//  Course.swift
//  CellViews
//
//  Created by Jayakrishnan u on 12/22/20.
//

import Foundation

struct Course: Codable {
    let id: String
    let courseName: String
    let courseDescription: String
    var lessions: Int
}
