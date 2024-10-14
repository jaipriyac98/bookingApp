//
//  ImageExtentionViewController.swift
//  Booking
//
//  Created by MAC on 04/10/22.
//

import UIKit

class ImageExtentionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    
   
    @IBOutlet weak var castImageCV: UICollectionView!
    
    @IBOutlet weak var collectionViewOne: UICollectionView!
    
    
    @IBOutlet weak var collectionView2: UICollectionView!
    
    var didSelectRow: ((_ data: String) -> Void)? = nil
    
    var CastMovieImage = ["After","Freedom","Harrypotter","Joker","Uncharted"]
    
    var CastGenreTitle = ["Genre","Age Category","Movie Time","Theatre","Rating"]
    
    var iconImage = ["mask","mask","mask","mask","mask","mask","mask","mask"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.castImageCV.register(UINib(nibName:"CastCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CastCollectionViewCell")
        
        self.collectionViewOne.register(UINib(nibName:"MarvelCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MarvelCollectionViewCell")
        
        self.collectionView2.register(UINib(nibName:"HorrorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HorrorCollectionViewCell")
        
        
        
        self.castImageCV.delegate = self
        self.castImageCV.dataSource = self
        self.collectionViewOne.delegate = self
        self.collectionViewOne.dataSource = self
        self.collectionView2.delegate = self
        self.collectionView2.dataSource = self
        
        let layout = castImageCV.collectionViewLayout as!
        UICollectionViewFlowLayout
        layout.scrollDirection = .horizontal
        
        let layout1 = collectionViewOne.collectionViewLayout as!
        UICollectionViewFlowLayout
        layout.scrollDirection = .horizontal
        
        let layout2 = collectionView2.collectionViewLayout as!
        UICollectionViewFlowLayout
        layout.scrollDirection = .horizontal
    }
    
    @IBAction func bookTicketButton(_ sender: Any) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == castImageCV {
        return iconImage.count
        }else if collectionView == collectionViewOne {
            return CastMovieImage.count
        }else if collectionView == collectionView2 {
            return CastMovieImage.count
        }else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == castImageCV {
        let cell = castImageCV.dequeueReusableCell(withReuseIdentifier: "CastCollectionViewCell", for: indexPath) as! CastCollectionViewCell
            
            cell.castImage.image = UIImage(named: iconImage[indexPath.row])
            
        cell.castNameLabel.text = iconImage[indexPath.row]
        return cell
            
        }else if collectionView == collectionViewOne {
            let cell = collectionViewOne.dequeueReusableCell(withReuseIdentifier: "MarvelCollectionViewCell", for: indexPath) as! MarvelCollectionViewCell
                
                cell.marvelImage.image = UIImage(named: CastMovieImage[indexPath.row])
                
            //cell.castNameLabel.text = CastGenreTitle[indexPath.row]
            return cell
        }else {
            let cell = collectionView2.dequeueReusableCell(withReuseIdentifier: "HorrorCollectionViewCell", for: indexPath) as! HorrorCollectionViewCell
                
                cell.horrorMovie.image = UIImage(named: CastMovieImage[indexPath.row])
                
            
            return cell
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == castImageCV {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        } else if collectionView == collectionViewOne {
            return CGSize(width: 100, height: 100)
        } else if collectionView == collectionView2 {
            return CGSize(width: 100, height: 100)
        } else {
            return CGSize(width: 0, height: 0)
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           
           let data = self.CastMovieImage[indexPath.row]
           didSelectRow?(data)
       }
}
