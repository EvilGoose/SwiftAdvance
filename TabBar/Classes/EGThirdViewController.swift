//
//  EGThirdViewController.swift
//  TabBar
//
//  Created by PD on 2017/12/20.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

private let CELL_ID = "third_cell_ID"

class EGThirdViewController: EGBasicViewController {

    let tableView = UITableView(frame: SCREEN_BOUNDS, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Third"
        self.navigationController?.navigationBar.isHidden = true
        tableView.separatorStyle = .none
        tableView.isScrollEnabled = false
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: CELL_ID)
        tableView.delegate = self
        tableView.dataSource = self

        self.view = tableView
    }
}

extension EGThirdViewController {
    func showAlert() {
        
        let alert = UIAlertController.init(title: "换头像", message: "选择一种方式", preferredStyle: .actionSheet)
        
        let action1 = UIAlertAction.init(title: "相册选取", style: .default) { (action: UIAlertAction) in
            print("hello")
            
        }
        
        let action2 = UIAlertAction.init(title: "拍照", style: .default) { (action: UIAlertAction) in
            
        }
        
        let cancel = UIAlertAction.init(title: "取消", style: .cancel) { (action: UIAlertAction) in
            
        }
        
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(cancel)
        
        self.navigationController?.present(alert, animated: true, completion: nil)
    }
}

extension EGThirdViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let topCell =
            EGThirdTopTableViewCell.init(style: .default, reuseIdentifier: "Top_cell_ID")
            topCell.selectionStyle = .none
            
            topCell.callBackBlock(block: {(action : topCellActions ) in
                print(action)
                self.showAlert()
            })
            
            return topCell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID)
        cell?.selectionStyle = .none
        cell?.textLabel?.text = "Hello world"
        cell?.backgroundColor = UIColor.randomColor
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return SCREEN_HEIGHT * 0.35
        }else {
            return 50
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 1:
            break
            
        case 2:
            break
            
        case 3:
            break
            
        case 4:
            break
            
        default:
            return
        }
    }
}
