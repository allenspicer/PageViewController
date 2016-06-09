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
        pageViewController?.dataSource = self
        pageViewController?.delegate = self
        
        pageControl.numberOfPages = colorsArray.count
        pageControl.currentPage = currentPage
        
        let startingViewController = viewControllerAtIndex(currentPage)
        pageViewController?.setViewControllers([startingViewController], direction: .Forward, animated: true, completion: nil)
        
        self.addChildViewController(pageViewController!)
        view.addSubview(pageViewController!.view)
        pageViewController?.didMoveToParentViewController(self)
        
        
        
    }

    func viewControllerAtIndex(index: Int) -> ColorDetailContentViewController{
        let colorDetailVC = storyboard?.instantiateViewControllerWithIdentifier("ColorContentViewController") as? ColorDetailContentViewController
        colorDetailVC?.pageIndex = index
        colorDetailVC?.detailBackgroundColor = colorsArray[index]
            return colorDetailVC!
        
    }

}


extension ColorDetailViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource{
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        let index = currentPage + 1
        if index == 0 || index == colorsArray.count {
            return nil
        }
        return viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        let index = currentPage - 1
        if index == 0 || index == NSNotFound {
            return nil
        }
        return viewControllerAtIndex(index)
    }
    
}
