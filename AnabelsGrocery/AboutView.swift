//
//  AboutView.swift
//  AnabelsGrocery
//
//  Created by Liam Bo on 1/8/22.
//

import Foundation
import UIKit

class AboutCell: UITableViewCell {
    @IBOutlet weak var lblCell: UILabel!
    
}

class AboutView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var aboutList = ["Store Hours", "Wednesday 3:00pm - 7:00pm", "Thursday: 3:00pm - 7:00pm", "Friday: 12:00pm - 5:00pm", "Contact Us!",  "607-255-1441",  "anabelgrocery@gmail.com",  "@AnabelsGrocery", "@AnabelsGrocery", "@AnabelsGrocery"]
    @IBOutlet weak var AboutView1: UITableView!
    @IBOutlet weak var AboutLabel: UILabel!
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = AboutView1.dequeueReusableCell(withIdentifier: "AboutCell", for: indexPath) as! AboutCell
        cell.textLabel?.text = aboutList[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Avenir-Light", size: (cell.textLabel?.font.pointSize)!)
        if indexPath.row == 0 || indexPath.row == 4{
            cell.backgroundColor = UIColor(red: 49.0/255.0, green: 220.0/255.0, blue: 39.0/255.0, alpha: 1.0)
            cell.textLabel?.textColor = UIColor.black

        }
        
        
        if indexPath.row == 5{
        cell.imageView!.image = UIImage(systemName: "phone")
        }
        
        if indexPath.row == 6{
        cell.imageView!.image = UIImage(systemName: "envelope")
        }
        
        if indexPath.row == 7{
        cell.imageView!.image = UIImage(named: "fb.jpeg")
        }
        
        
        if indexPath.row == 8{
        cell.imageView!.image = UIImage(named: "insta.png")
        }
        
        if indexPath.row == 9{
        cell.imageView!.image = UIImage(named: "twitter.png")
        }
        
        return cell
    }
 
    
    
    override func viewDidLoad() {
        AboutLabel.font = UIFont(name: "Avenir-Light", size: (AboutLabel.font.pointSize))
        AboutView1.dataSource = self
        AboutView1.delegate = self
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
        
        AboutLabel.frame = CGRect(x:  self.view.frame.width/2-AboutLabel.frame.width/2, y: CGFloat(CGFloat(topPadding+55)+(AboutLabel.frame.height)), width: AboutLabel.frame.width, height: AboutLabel.frame.height)
        AboutView1.frame = CGRect(x:  self.view.frame.origin.x, y: CGFloat(AboutLabel.frame.maxY+30), width: self.view.frame.size.width, height: self.view.frame.size.height - bottomPadding - self.view.frame.size.height*0.05347826086)
        
    }
}
