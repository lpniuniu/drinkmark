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
        
        view.backgroundColor = UIColor(patternImage:UIImage(named: "readlist_back")!)
        
        readlistTableView = UITableView()
        readlistTableView.dataSource = self
        readlistTableView.delegate = self
        view.addSubview(readlistTableView)
        readlistTableView.snp_makeConstraints { (make) in
            make.top.equalTo(view).inset(20)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.bottom.equalTo(view).inset(49)
        }
        readlistTableView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        readlistTableView.allowsSelection = false
        readlistTableView.separatorStyle = .None
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
        
        cell!.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
        
        let blurEffect = UIBlurEffect(style: .Light)
        let desk = UIVisualEffectView(effect: blurEffect)
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

