//
//  FirstVC.swift
//  Autolayout
//
//  Created by akww on 16/7/19.
//  Copyright © 2016年 haveAHome. All rights reserved.
//

import UIKit

class FirstVC: UITableViewController {

    var labelArray = Array<String>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "FirstTableViewCell", bundle: nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: "firstTableVieCell")
        self.tableView.estimatedRowHeight = 10;
        // 循环生成 label 文字内容
        for i in 1...10 {
            var text = ""
            for _ in 1...i {
                text += "Auto Layout  Auto LayoutAuto LayoutAuto Layout"
            }
            labelArray.append(text)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("firstTableVieCell", forIndexPath: indexPath) as! FirstTableViewCell
        cell.firstLabel.text = labelArray[indexPath.row]
        return cell;
    }
    
  
    
}
