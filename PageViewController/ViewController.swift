//
//  ViewController.swift
//  PageViewController
//
//  Created by Allen Spicer on 6/9/16.
//  Copyright © 2016 Allen Spicer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    let colorsArray = ["Red", "Blue", "Green", "Yellow", "Purple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
tableView.tableFooterView = UIView(frame: CGRectZero)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ColorCell", forIndexPath: indexPath)
        cell.textLabel?.text = colorsArray[indexPath.row]
        
        return cell
    }
    
    
}



