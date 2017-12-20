//
//  EGRootViewController.swift
//  SwiftAdvanceDemos
//
//  Created by PD on 2017/11/30.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGRootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let array = [
        "EGStopWatchViewController"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Demo"
        
        let tableView = UITableView.init(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        self.view = tableView
        
    }
}

extension EGRootViewController {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        if (cell == nil) {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "cellID")
        }
        cell?.textLabel?.text = array[indexPath.row]
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(CONTROLLER_FROM_STRING(array[indexPath.row])!, animated: true)
 
    }
}
