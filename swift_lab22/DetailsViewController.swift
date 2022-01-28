//
//  DetailsViewController.swift
//  swift_lab22
//
//  Created by Mohamed Toba on 1/9/22.
//  Copyright © 2022 Mohamed Toba. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var movie = Movie()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var genreTxt: UILabel!
    @IBOutlet weak var yearTxt: UILabel!
    @IBOutlet weak var ratingTxt: UILabel!
    @IBOutlet weak var titleTxt: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleTxt.text = movie.title
        yearTxt.text = String(movie.releaseYear)
        ratingTxt.text = String(movie.rating)
        genreTxt.text = movie.genre
        imageView.sd_setImage(with: URL(string: movie.image!), placeholderImage: UIImage(named: "glass.jpg"))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
