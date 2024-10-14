//
//  ViewController.swift
//  Booking
//
//  Created by MAC on 22/09/22.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    

    @IBOutlet weak var titleCollectionview: UICollectionView!
    
    @IBOutlet weak var nowShowingCollectionView: UICollectionView!
    
    @IBOutlet weak var basedCollectionView: UICollectionView!
    
    @IBOutlet weak var NowShowingTextColl: UICollectionView!
    
    
    
    
    @IBOutlet weak var genreCollectionView: UICollectionView!
    
    @IBOutlet weak var genreImage: UICollectionView!
    
    var didSelectRow: ((_ data: String) -> Void)? = nil
    
    var MovieImage = ["After","Freedom","Harrypotter","Joker","Uncharted"]
    
    var MovieImage1 = ["one","Two","Three","Four","Five"]
    
    var GenreTitle = ["Genre","Age Category","Movie Time","Theatre","Rating"]
    
    var NameTitle = ["ACTION","ADVENTURE","ANIMATION","COMEDY","CRIME"]
    //var GenreTitleImage = ["Five","Freedom","Harrypotter","one","Two"]
    
    var iconImage = ["film","mask","live","live","mask","mask"]
    
    var iconNames = ["Movies","Plays","Music","Food","Shows","Sport"]
    
    var showing = ["Now Showing","Trending"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.titleCollectionview.register(UINib(nibName:"TitleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TitleCollectionViewCell")
            
        
        self.nowShowingCollectionView.register(UINib(nibName:"NowShowingCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NowShowingCollectionViewCell")
            
        
        self.basedCollectionView.register(UINib(nibName:"BasedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BasedCollectionViewCell")
            
        
        self.genreCollectionView.register(UINib(nibName:"GenreCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GenreCollectionViewCell")
            
        
       self.genreImage.register(UINib(nibName:"GenreImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GenreImageCollectionViewCell")
          
       self.NowShowingTextColl.register(UINib(nibName:"NowCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NowCollectionViewCell")
        
        
              
              self.titleCollectionview.delegate = self
              self.titleCollectionview.dataSource = self
              self.nowShowingCollectionView.delegate = self
              self.nowShowingCollectionView.dataSource = self
              self.basedCollectionView.delegate = self
              self.basedCollectionView.dataSource = self
              self.genreCollectionView.delegate = self
              self.genreCollectionView.dataSource = self
              self.genreImage.delegate = self
              self.genreImage.dataSource = self
            self.NowShowingTextColl.delegate = self
             self.NowShowingTextColl.dataSource = self
        
        let layout = titleCollectionview.collectionViewLayout as!
        UICollectionViewFlowLayout
        layout.scrollDirection = .horizontal

        let scrollDirectionLayout = nowShowingCollectionView.collectionViewLayout as!
        UICollectionViewFlowLayout
        scrollDirectionLayout.scrollDirection = .horizontal
      

        let basedCollectionViewLayout = basedCollectionView.collectionViewLayout as!
        UICollectionViewFlowLayout
        basedCollectionViewLayout.scrollDirection = .horizontal
        

        let genreCollectionViewLayout = genreCollectionView.collectionViewLayout as!
        UICollectionViewFlowLayout
        genreCollectionViewLayout.scrollDirection = .horizontal
     


        let genreImageLayout = genreImage.collectionViewLayout as!
        UICollectionViewFlowLayout
        genreImageLayout.scrollDirection = .horizontal
        
        let nowShowingCollectionViewCell = NowShowingTextColl.collectionViewLayout as!
        UICollectionViewFlowLayout
        nowShowingCollectionViewCell.scrollDirection = .horizontal
        
        let label = UILabel()
        label.isHighlighted = true
        label.highlightedTextColor = UIColor.red
        
        //let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
          layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
          layout.itemSize = CGSize(width: 90, height: 120)


    }
    
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == titleCollectionview {
            
            return MovieImage.count
        }else if collectionView == nowShowingCollectionView {
            return MovieImage.count
        }else if collectionView == NowShowingTextColl {
            return showing.count
        }
        else if collectionView == basedCollectionView {
            
            return MovieImage1.count
        
        }else if collectionView == genreCollectionView {
            return GenreTitle.count
        }else if collectionView == genreImage {
            return MovieImage1.count

        }
        else {
            return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == titleCollectionview {
        print("zfgzd")
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        }else if collectionView == nowShowingCollectionView {
            return CGSize(width: 40, height: 50)
        }else if collectionView == NowShowingTextColl {
           return CGSize(width: 40, height: 50)
        }
        else if collectionView == basedCollectionView {
            
            print("fsnfsfns",collectionView.frame.width,collectionView.frame.height)
            return CGSize(width: 370, height:140)
        }else if collectionView == genreCollectionView {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        }else if collectionView == genreImage {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)

        } else {
            return CGSize(width: 0, height: 0)
        }
      }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == titleCollectionview {
        let cell = titleCollectionview.dequeueReusableCell(withReuseIdentifier: "TitleCollectionViewCell", for: indexPath) as! TitleCollectionViewCell
            
            cell.titleImage.image = UIImage(named: iconImage[indexPath.row])
            
            cell.titleName.text = iconNames[indexPath.row]
            
           return cell
            
            
                
        }else if collectionView == nowShowingCollectionView {
            let cell = nowShowingCollectionView.dequeueReusableCell(withReuseIdentifier: "NowShowingCollectionViewCell", for: indexPath) as! NowShowingCollectionViewCell
            cell.nowShowingButton.tag = indexPath.row// it will identify the tapped button cell index
            cell.nowShowingButton.addTarget(self, action: #selector(connected(sender:)), for: .touchUpInside)
            cell.NowShowingimage.image = UIImage(named: MovieImage[indexPath.row])
            return cell
            
        }else if collectionView == NowShowingTextColl {
            let cell = NowShowingTextColl.dequeueReusableCell(withReuseIdentifier: "NowCollectionViewCell", for: indexPath) as! NowCollectionViewCell
            cell.nowShowingLabel.text = showing[indexPath.row]
                        return cell
        }
        else if collectionView == basedCollectionView {
            let cell = basedCollectionView.dequeueReusableCell(withReuseIdentifier: "BasedCollectionViewCell", for: indexPath) as! BasedCollectionViewCell
            
            cell.basedImage.image = UIImage(named: MovieImage1[indexPath.row])
            return cell
            

        }else if collectionView == genreCollectionView {
            let cell = genreCollectionView.dequeueReusableCell(withReuseIdentifier: "GenreCollectionViewCell", for: indexPath) as! GenreCollectionViewCell
            
            
            cell.genreLabel.text = GenreTitle[indexPath.row]
            return cell
        }else {
            let cell = genreImage.dequeueReusableCell(withReuseIdentifier: "GenreImageCollectionViewCell", for: indexPath) as! GenreImageCollectionViewCell
            cell.genreImage.image = UIImage(named: MovieImage[indexPath.row])
            cell.nameLabel.text = NameTitle[indexPath.row]
            return cell

       }
       
    }
    
    

    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        let cell = collectionView.cellForItem(at: indexPath) as? NowCollectionViewCell
        let cell1 = collectionView.cellForItem(at: indexPath) as? GenreCollectionViewCell

        if cell?.isSelected == true {
            cell?.nowShowingLabel.textColor = .red
            cell?.emptyView.backgroundColor = .red
            collectionView.selectItem(at: nil, animated: true, scrollPosition: [])
            
            return false
        }else if cell?.isMultipleTouchEnabled == true {
            cell?.nowShowingLabel.textColor = .white
            cell?.emptyView.backgroundColor = .white
            collectionView.selectItem(at: nil, animated: true, scrollPosition: [])
        }
        else if cell1?.isSelected == true {
            cell1?.genreLabel.textColor = .white
            cell1?.genreLabelView.backgroundColor = .red
            cell1?.genreLabel.backgroundColor = .red
            collectionView.selectItem(at: nil, animated: true, scrollPosition: [])

            return false
        }else if cell1?.isMultipleTouchEnabled == true {
            cell1?.genreLabelView.backgroundColor = .clear
            cell1?.genreLabel.backgroundColor = .clear
        //cell1?.genreLabel.textColor = .red
            
            collectionView.selectItem(at: nil, animated: true, scrollPosition: [])
        }
        return true
}

//    private func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) {
//        let cell = collectionView.cellForItem(at: indexPath) as? BasedCollectionViewCell
//        if cell!.basedImage.image == UIImage(named: MovieImage[indexPath.row]) {
//      print("sdjhvbiahsdvb")
//            let controller = self.storyboard?.instantiateViewController(withIdentifier: "ImageExtentionViewController") as! ImageExtentionViewController
//            self.navigationController?.pushViewController(controller, animated: true)
//        }
//    }
    
    @objc func connected(sender: UIButton){
        let tag = sender.tag
        print(tag,"jgvkjh")
        let ViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ImageExtentionViewController") as? ImageExtentionViewController
self.navigationController?.pushViewController(ViewController!, animated: true)
      }

}
