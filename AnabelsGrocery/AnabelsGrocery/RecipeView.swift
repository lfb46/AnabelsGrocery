//
//  AboutView.swift
//  AnabelsGrocery
//
//  Created by Liam Bo on 1/8/22.
//

import Foundation
import UIKit

class RecipeCell: UITableViewCell {
    @IBOutlet weak var lblCell: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
}

class RecipeView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var RecipeTable: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return glovars.RecipeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = RecipeTable.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! RecipeCell
        cell.lblCell.text = glovars.RecipeList[indexPath.row]
        cell.imageCell.image = UIImage(named: glovars.RecipeImageList[indexPath.row])
     
        return cell
    }
 
    
    
    override func viewDidLoad() {
        
        RecipeTable.dataSource = self
        RecipeTable.delegate = self
        super.viewDidLoad()
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        
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
        
       RecipeTable.frame = CGRect(x:  self.view.frame.origin.x, y: CGFloat(topPadding+40), width: self.view.frame.size.width, height: self.view.frame.size.height - bottomPadding - self.view.frame.size.height*0.05347826086)
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        glovars.recipeNum = indexPath.row
        self.performSegue(withIdentifier: "RecipeSegue", sender: self)
    }

}
