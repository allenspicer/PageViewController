//
//  ColorDetailContentViewController.swift
//  PageViewController
//
//  Created by Allen Spicer on 6/9/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class ColorDetailContentViewController: UIViewController {
    
    var pageIndex = 0
    var detailBackgroundColor: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let detailBackgroundColor = detailBackgroundColor{
            switch detailBackgroundColor {
            case "Red":
                view.backgroundColor = UIColor.redColor()
            case "Blue":
                view.backgroundColor = UIColor.blueColor()
            case "Green":
                view.backgroundColor = UIColor.greenColor()
            case "Yellow":
                view.backgroundColor = UIColor.yellowColor()
            case "Purple":
                view.backgroundColor = UIColor.purpleColor()
            default:
                view.backgroundColor = UIColor.whiteColor()
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
