//
//  RefreshMoviesProtocol.swift
//  swift_lab22
//
//  Created by Mohamed Toba on 1/9/22.
//  Copyright © 2022 Mohamed Toba. All rights reserved.
//

import Foundation
protocol RefreshMoviesProtocol {
    var movieList: [Movie] {get set}
    func refreshMovies();
}
