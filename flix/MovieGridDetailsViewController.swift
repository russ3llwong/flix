//
//  MovieGridDetailsViewController.swift
//  flix
//
//  Created by Russell Wong on 2/11/19.
//  Copyright © 2019 Russell Wong. All rights reserved.
//

import UIKit

class MovieGridDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropGridView: UIImageView!
    @IBOutlet weak var posterGridView: UIImageView!
    @IBOutlet weak var titleGridLabel: UILabel!
    @IBOutlet weak var synopsisGridLabel: UILabel!
    
    var movieDetail: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleGridLabel.text = movieDetail["title"] as? String
        titleGridLabel.sizeToFit()
        
        synopsisGridLabel.text = movieDetail["overview"] as? String
        synopsisGridLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movieDetail["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterGridView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movieDetail["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropGridView.af_setImage(withURL: backdropUrl!)
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
