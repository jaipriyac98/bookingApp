//
//  ParkCollectionViewCell.swift
//  Booking
//
//  Created by MAC on 12/10/22.
//

import UIKit

class ParkCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ParkCView: UIView!
    
    @IBOutlet weak var parkCLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ParkCView.layer.frame.size.width += 30
        ParkCView.layer.frame.origin.x -= 30
        //genreLabelView.textAlignment = .center

        //border
        ParkCView.layer.borderColor = UIColor.black.cgColor
        ParkCView.layer.borderWidth = 1.0
        ParkCView.layer.cornerRadius = 15.0
        
      
    }

}
