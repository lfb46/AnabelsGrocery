import UIKit

class itemCell: UICollectionViewCell {
    @IBOutlet weak var imgCell: UIImageView!
    @IBOutlet weak var lblCell: UILabel!
    
}


class ItemsView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
   

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    override func viewDidLoad() {
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
        collectionView.dataSource = self
        collectionView.delegate = self
       //UIView.animate(views: collectionView.visibleCells, animations: [zoomAnimation, rotateAnimation], duration: 0.5)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        print(screenWidth)
        collectionView.contentInset = UIEdgeInsets(top: screenHeight/50, left: 25, bottom: screenHeight/25, right: 25)
        print(screenWidth)
        layout.itemSize = CGSize(width: screenWidth/2, height: screenWidth/2)
        //layout.minimumInteritemSpacing = 0
       
         let height = 88 + (self.tabBarController?.tabBar.frame.height)! ?? 49.0
              var topPadding = 44
              var bottomPadding = height
        if #available(iOS 11.0, *) {
              let window = UIApplication.shared.keyWindow
                  topPadding = Int(window?.safeAreaInsets.top ?? 44)
                  bottomPadding = window?.safeAreaInsets.bottom ?? height
                  print(topPadding)
                  print(bottomPadding)
         }
        
        //collectionView.frame = CGRect(x:  self.view.frame.origin.x, y: CGFloat(topPadding+40), width: self.view.frame.size.width, height: self.view.frame.size.height - bottomPadding - self.view.frame.size.height*0.05347826086)
        collectionView.reloadData()
        collectionView.layoutIfNeeded()
         
       
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return glovars.categories.count
    }
    
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: colvwCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! colvwCell
        
        if glovars.catNum == 0 {
        cell.lblCell.text = glovars.Produce[indexPath.row][0]
        cell.imgCell.image = UIImage(named: glovars.Produce[indexPath.row][2])
        }
        cell.imgCell.layer.shadowColor = UIColor.black.cgColor
        cell.imgCell.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        cell.imgCell.layer.shadowOpacity = 0.5
        cell.imgCell.layer.shadowRadius = 3.0
        cell.imgCell.layer.masksToBounds = false
        cell.lblCell.adjustsFontSizeToFitWidth = true
        
        
      //  cell.animate(animations: [leftToRightAnimation], reversed: false, initialAlpha: 0.0, finalAlpha: 1.0, delay: 0, duration: 1.0)
        return cell
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //self.performSegue(withIdentifier: "agentSegue", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
