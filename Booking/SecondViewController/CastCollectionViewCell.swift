//
//  CastCollectionViewCell.swift
//  Booking
//
//  Created by MAC on 10/10/22.
//

import UIKit

class CastCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var castImage: UIImageView!
    
    @IBOutlet weak var castNameLabel: UILabel!
    
    @IBOutlet weak var castImageView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        castImageView.layer.borderWidth = 1
            castImageView.layer.masksToBounds = false
            castImageView.layer.borderColor = UIColor.black.cgColor
        castImageView.layer.cornerRadius = castImageView.frame.height/2
        castImageView.clipsToBounds = true
        
        castImage.layer.borderWidth = 1
            castImage.layer.masksToBounds = false
            castImage.layer.borderColor = UIColor.black.cgColor
        castImage.layer.cornerRadius = castImage.frame.height/2
            castImage.clipsToBounds = true
    }

}
