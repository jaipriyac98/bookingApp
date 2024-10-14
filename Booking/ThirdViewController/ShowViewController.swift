//
//  ShowViewController.swift
//  Booking
//
//  Created by MAC on 11/10/22.
//

import UIKit

class ShowViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
    
    var parkTime = ["10:20 AM","12:30 AM", "3:10 PM","6:15 PM","7:30 PM","10:10 PM"]
    
    var granadaTime = ["12:10 PM","3:30 PM","5:10 PM","7:15 PM","9.30 PM","11:10 PM"]
    
    var empireTime = ["12:10 PM","3:30 PM","5:10 PM","7:15 PM", "9.30 PM", "11:10 PM"]
    
    var riyadhTime = ["12:10 PM","3:30 PM","5:10 PM","7:15 PM", "9.30 PM", "11:10 PM"]
    
    @IBOutlet weak var augLabel: UILabel!

    @IBOutlet weak var parkCollectionview: UICollectionView!
    
    @IBOutlet weak var riyadhCollectionView: UICollectionView!
    
    
    @IBOutlet weak var granadaCollectionView: UICollectionView!
    
    @IBOutlet weak var empireCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
     augLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        
        self.parkCollectionview.register(UINib(nibName:"ParkCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ParkCollectionViewCell")
        
        self.riyadhCollectionView.register(UINib(nibName:"RiyadhCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RiyadhCollectionViewCell")
        
        self.granadaCollectionView.register(UINib(nibName:"GranadaCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GranadaCollectionViewCell")
        
        self.empireCollectionView.register(UINib(nibName:"EmpireCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "EmpireCollectionViewCell")
        
        self.parkCollectionview.delegate = self
        self.parkCollectionview.dataSource = self
        
        self.empireCollectionView.delegate = self
        self.empireCollectionView.dataSource = self
        
        self.riyadhCollectionView.delegate = self
        self.riyadhCollectionView.dataSource = self
        
        self.granadaCollectionView.delegate = self
        self.granadaCollectionView.dataSource = self
        
        
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == parkCollectionview {
            return parkTime.count
        } else if collectionView == empireCollectionView {
            return empireTime.count
        } else if collectionView == riyadhCollectionView {
            return riyadhTime.count
        } else if collectionView == granadaCollectionView {
            return granadaTime.count
        }else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == parkCollectionview {
        let cell = parkCollectionview.dequeueReusableCell(withReuseIdentifier: "ParkCollectionViewCell", for: indexPath) as! ParkCollectionViewCell
            
            
        cell.parkCLabel.text = parkTime[indexPath.row]
            
           return cell
        }else if collectionView == empireCollectionView {
            let cell = empireCollectionView.dequeueReusableCell(withReuseIdentifier: "EmpireCollectionViewCell", for: indexPath) as! EmpireCollectionViewCell
            
            cell.empireCLabel.text = empireTime[indexPath.row]
            
            return cell
        } else if collectionView == riyadhCollectionView {
            let cell = riyadhCollectionView.dequeueReusableCell(withReuseIdentifier: "RiyadhCollectionViewCell", for: indexPath) as! RiyadhCollectionViewCell
            
            cell.riyadhCLabel.text = riyadhTime[indexPath.row]
            
            return cell
        } else {
            let cell = granadaCollectionView.dequeueReusableCell(withReuseIdentifier: "GranadaCollectionViewCell", for: indexPath) as! GranadaCollectionViewCell
            
            cell.grandCLabel.text = granadaTime[indexPath.row]
            
            return cell
        }
    }

   

}
