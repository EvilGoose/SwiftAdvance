//
//  FMRootViewController.swift
//  ForkMan
//
//  Created by EG on 2017/11/20.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class FMRootViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, FMDelegateViewControllerProtocol {
    
    var tableView : UITableView?

    let array = ["block", "protocal", "notification", "snapkit"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
	
        self.title = "HelloWorld"
        
        NotificationCenter.default.addObserver(self, selector: #selector(changeBackgroundColor), name: Notification.Name(rawValue:"TouchAndChange"), object: nil)
        
        // Do any additional setup after loading the view.
        self.tableView = UITableView.init(frame: self.view.bounds, style: UITableViewStyle.plain)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.view = self.tableView!
    }
    
    @objc func changeBackgroundColor() {
        self.view.backgroundColor = UIColor.green
    }
    
}

extension FMRootViewController {
     func touchedMe(_ controller: FMDelegateViewController) {
        self.view.backgroundColor = UIColor.blue
    }
}

extension FMRootViewController {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let viewController = FMFirstStateViewController.init()
            viewController.view.backgroundColor = UIColor.white
            viewController.callBackBlock(block: { (str : String) in
                self.view.backgroundColor = UIColor.orange
            })
            self.navigationController?.pushViewController(viewController, animated: true)
            
        }else if indexPath.row == 1 {
            let viewController = FMDelegateViewController.init()
            viewController.view.backgroundColor = UIColor.white
            viewController.delegate = self
            self.navigationController?.pushViewController(viewController, animated: true)
            
        }else  if indexPath.row == 2 {
            let viewController = FMPostNotificationViewController.init()
            viewController.view.backgroundColor = UIColor.white
         	self.navigationController?.pushViewController(viewController, animated: true)
            
        }else {
            let viewController = FMSnapKitViewController.init()
            viewController.view.backgroundColor = UIColor.white
            self.navigationController?.pushViewController(viewController, animated: true)
        }
	}
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier:"tableViewCell")
        if (cell == nil) {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "tableViewCell")
        }
        cell!.textLabel!.text = self.array[indexPath.row]
         return cell!
    }
}

