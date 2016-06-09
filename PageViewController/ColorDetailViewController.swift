//
//  ColorDetailViewController.swift
//  PageViewController
//
//  Created by Allen Spicer on 6/9/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {


    @IBOutlet weak var pageControl: UIPageControl!
    
    var currentPage = 0
    var pageViewController: UIPageViewController?
    var colorsArray = [String]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageViewController = storyboard?.instantiateViewControllerWithIdentifier("ColorDetailViewController") as? UIPageViewController
        
        
        
        
        
        
    }


}
