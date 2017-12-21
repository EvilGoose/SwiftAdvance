//
//  EGFirstViewController.swift
//  TabBar
//
//  Created by PD on 2017/12/20.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

private let CELL_ID = "first_controller_cell_ID"
private let HEADER_ID = "first_controller_header_ID"

class EGFirstViewController: EGBasicViewController {

    let tableView = UITableView.init(frame: SCREEN_BOUNDS, style: .plain)//当使用group样式的情况，header不会有挂顶效果的
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.tabBarController?.hidesBottomBarWhenPushed = true

        // Do any additional setup after loading the view.
        self.title = "First"
        self.view = tableView
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: CELL_ID)
        tableView.register(UITableViewHeaderFooterView.classForCoder(), forHeaderFooterViewReuseIdentifier: HEADER_ID)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.navigationController?.pushViewController(UIViewController.init(), animated: true)
    }

}


extension EGFirstViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID)
        cell?.accessoryType = .checkmark
        cell?.selectionStyle = .none
        cell?.textLabel?.text = "Hello world"
        if indexPath.row%2 == 0 {
            cell?.backgroundColor = UIColor.white
        }else {
            cell?.backgroundColor = UIColor.darkGray
        }
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HEADER_ID)
        if (headerView != nil) {
            headerView = UITableViewHeaderFooterView.init()
            headerView?.detailTextLabel?.text = "description"
            headerView?.contentView.backgroundColor = UIColor.randomColor
        }
        return headerView
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "Section +++ 1"
        }
        return "Header" + String(section)
    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 40
//    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chidVC = EGFirstChildViewController.init()
        chidVC.title =  "Child " + String(indexPath.row)
        self.navigationController?.pushViewController(chidVC, animated: true)
    }
}
