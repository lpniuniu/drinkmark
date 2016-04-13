//
//  ReadListViewController.swift
//  drinkmark
//
//  Created by FanFamily on 16/3/25.
//  Copyright © 2016年 niuniu. All rights reserved.
//

import UIKit
import SnapKit

class ReadListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var readlistTableView:UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 96/255, green: 56/255, blue: 17/255, alpha: 0.5)
        
        readlistTableView = UITableView()
        readlistTableView.dataSource = self
        readlistTableView.delegate = self
        view.addSubview(readlistTableView)
        readlistTableView.snp_makeConstraints { (make) in
            make.top.equalTo(view).inset(20)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.bottom.equalTo(view)
        }
        readlistTableView.alpha = 0.5
        readlistTableView.allowsSelection = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let readlistIdentifier = "readlistIdentifier"
        var cell = tableView.dequeueReusableCellWithIdentifier(readlistIdentifier)
        if cell == nil {
            cell = UITableViewCell()
        }
        let blurEffect = UIBlurEffect(style: .Light)
        let desk = UIVisualEffectView(effect: blurEffect)
        desk.backgroundColor = UIColor.redColor()
        cell!.addSubview(desk)
        desk.layer.cornerRadius = 10
        desk.layer.masksToBounds = true;
        desk.snp_makeConstraints { (make) in
            make.edges.equalTo(cell!).inset(10.0)
        }
        return cell!
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
}

