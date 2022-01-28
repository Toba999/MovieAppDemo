//
//  Movie.swift
//  swift_lab22
//
//  Created by Mohamed Toba on 1/9/22.
//  Copyright © 2022 Mohamed Toba. All rights reserved.
//

import UIKit

class Movie: NSObject {
    
    var id : Int!
    
    var title :String!
    
    var image :String!
    
    var genre: String!
    
    var rating :Float!
    
    var releaseYear :Int!
    
    override init() {
        id = 1000
        self.title = "title"
        self.image = "image"
        self.rating = 0.0
        self.releaseYear = 0
        self.genre = ""
    }
    
    init(_ id : Int,_ title : String,_ image : String , _ genre: String, _ rating: Float,_ releaseYear: Int) {
        self.id = id
        self.title = title
        self.image = image
        self.genre = genre
        self.rating = rating
        self.releaseYear = releaseYear
        
    }
}
