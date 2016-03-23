//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by 杨艾平 on 16/3/21.
//  Copyright © 2016年 yap. All rights reserved.
//


import UIKit
import Social

class KoreanViewController: UIViewController{
    
    @IBOutlet weak var beautyName: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func facebookTipped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        
        controller.setInitialText("一起来玩女神画廊app吧，就在Github上")
        controller.addImage(beautyName.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func twitterTipped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        controller.setInitialText("一起来玩女神画廊app吧，就在Github上")
        controller.addImage(beautyName.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func weiboTipped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        
        controller.setInitialText("一起来玩女神画廊app吧，就在Github上")
        controller.addImage(beautyName.image)
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
}
