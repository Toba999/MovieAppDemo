//
//  MovieManager.swift
//  swift_lab22
//
//  Created by Mohamed Toba on 1/9/22.
//  Copyright © 2022 Mohamed Toba. All rights reserved.
//

import UIKit

class MovieManager {

    var movieList : [Movie]!
        
    var count = 0
    
    
    func addMovie(movie : inout Movie)  {
        
        count+=1
        movieList.append(movie)
    }
    
    func removeMovie(index : inout Int)  {
        
        count+=1
        movieList.remove(at: index)
    }
    
    
}
