//
//  AboutView.swift
//  AnabelsGrocery
//
//  Created by Liam Bo on 1/8/22.
//

import Foundation
import UIKit

class RecipeDetailCell: UITableViewCell {
    //@IBOutlet weak var lblCell: UILabel!
    
}

class RecipeDetailView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var InfoView: UITableView!
    @IBOutlet weak var IngredientsView: UITableView!
    @IBOutlet weak var RecipeLabel: UILabel!
    @IBOutlet weak var RecipeImage: UIImageView!
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = InfoView.dequeueReusableCell(withIdentifier: "RecipeDetailCell", for: indexPath) as! RecipeDetailCell
        cell.textLabel!.font = UIFont(name: "Avenir-Light", size: (cell.textLabel?.font.pointSize)!)
        
        if indexPath.row == 0 {
            cell.textLabel!.text = "Prep Time:"
           
            //cell.subtitleLabel?.text = "10 Min"
        }
        
        if indexPath.row == 1 {
            cell.textLabel!.text = "Cook Time:"
        }
        return cell
    }
 
    
    
    override func viewDidLoad() {
        //RecipeLabel.font = UIFont(name: "Avenir-Light", size: (RecipeLabel.font.pointSize))
        InfoView.dataSource = self
        InfoView.delegate = self
        super.viewDidLoad()
        RecipeImage.image = UIImage(named: glovars.RecipeImageList[glovars.recipeNum])
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
        
        //RecipeImage.frame = CGRect(x:  self.view.frame.width/2-RecipeImage.frame.width/2, y: CGFloat(CGFloat(topPadding)), width: RecipeImage.frame.width, height: RecipeImage.frame.height)
        //AboutView1.frame = CGRect(x:  self.view.frame.origin.x, y: CGFloat(AboutLabel.frame.maxY+30), width: self.view.frame.size.width, height: self.view.frame.size.height - bottomPadding - self.view.frame.size.height*0.05347826086)
        
    }
}
