//
//  GenreCollectionViewCell.swift
//  Booking
//
//  Created by MAC on 26/09/22.
//

import UIKit

class GenreCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var genreLabel: UILabel!
    
    @IBOutlet weak var genreLabelView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        genreLabelView.layer.frame.size.width += 30
        genreLabelView.layer.frame.origin.x -= 30
        //genreLabelView.textAlignment = .center

        //border
        genreLabelView.layer.borderColor = UIColor.white.cgColor
        genreLabelView.layer.borderWidth = 1.0
        genreLabelView.layer.cornerRadius = 15.0
        
       
    }

}
