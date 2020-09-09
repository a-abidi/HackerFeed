//
//  PostData.swift
//  HackerFeed
//
//  Created by Ali on 09/09/2020.
//  Copyright © 2020 Ali Abidi. All rights reserved.
//

import Foundation

// Represents the format we want the API call to be put into

// Needs to conform to Decodable so we can use the JSON Decoder to decode the JSON data into a 'Result' struct


struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID // Computed property rather than regular property, as Identifiable requires 'id' property.
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
