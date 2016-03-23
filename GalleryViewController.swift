//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by 杨艾平 on 16/3/17.
//  Copyright © 2016年 yap. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController{
    
    var imageName: String?
    
    @IBOutlet weak var beautyName: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (imageName != nil) {
            beautyName.image = UIImage(named: imageName!)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shareTipped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        controller.setInitialText("一起来玩女神画廊app吧，就在Github上")
        controller.addImage(beautyName.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}
