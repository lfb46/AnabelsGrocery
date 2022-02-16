
//

import UIKit

class HomeNavController: UINavigationController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
  
    }
    override func viewDidLoad() {
        navigationBar.prefersLargeTitles = true
               if #available(iOS 13.0, *) {
                   let appearance = UINavigationBarAppearance()
                   appearance.backgroundColor = UIColor(red: 49.0/255.0, green: 220.0/255.0, blue: 39.0/255.0, alpha: 1.0)
                   appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
                   appearance.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Avenir-Heavy", size: 30)!, .foregroundColor: UIColor.white]
                   UINavigationBar.appearance().tintColor = .white
                   UINavigationBar.appearance().standardAppearance = appearance
                   UINavigationBar.appearance().compactAppearance = appearance
                   UINavigationBar.appearance().scrollEdgeAppearance = appearance
               } else {
                   UINavigationBar.appearance().tintColor = .white
                   UINavigationBar.appearance().barTintColor = .purple
                   UINavigationBar.appearance().isTranslucent = false
               }
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}

