//
//  FullScreenView.swift
//  Collection View
//
//  Created by apple on 25/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

class FullScreenView: UIViewController {

    @IBOutlet weak var fullScreenImage: UIImageView!
    var img : UIImage!
    
    
    
    
    
    @IBAction func makeSmall(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullScreenImage?.image = img
        
        // Do any additional setup after loading the view.
        
    }
    
    
    
  
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
