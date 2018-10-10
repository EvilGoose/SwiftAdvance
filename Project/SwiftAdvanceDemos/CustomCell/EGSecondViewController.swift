//
//  EGSecondViewController.swift
//  SwiftAdvanceDemos
//
//  Created by 方伟易 on 2018/9/7.
//  Copyright © 2018年 EGMade. All rights reserved.
//

import UIKit
import SnapKit

class EGSecondViewController: EGBasicViewController, UITableViewDelegate, UITableViewDataSource {

    let cellID = "functionCellID"
    let funtions = ["功能1", "功能2", "功能3", "功能4", "功能5", "功能6"]
    let topViewHeight = 240.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = true
        self.configureSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        presentTableView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.bottom.equalToSuperview().offset(-44)
        }
    }
    
    func configureSubviews() {
//        self.view.addSubview(topScrollView)
        self.view.addSubview(presentTableView)
    }
    
    lazy var topScrollView = {() -> UIScrollView in
        let scrollView = UIScrollView.init(frame: CGRect.zero)
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        scrollView.backgroundColor = UIColor.blue
        scrollView.contentSize = CGSize.init(width: Double(SCREEN_WIDTH * 4), height: topViewHeight)
        return scrollView
    }()

    lazy var presentTableView = {() -> UITableView in
        let tableView = UITableView.init(frame: CGRect.zero)
        tableView.bounces = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: "EGFreshManTableViewCell", bundle: nil), forCellReuseIdentifier:"EGFreshManTableViewCell")
        return tableView
    }()
    
}


// MARK: - Scroll delegate
extension EGSecondViewController {
    
}


// MARK: - TableView delegate / datasource
extension EGSecondViewController {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 200
        case 1:
            return 240
        case 2:
            return 60
        default:
            return 60
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.funtions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            return  EGBannerTableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "EGBannerTableViewCell")
            
        case 1:
            return tableView.dequeueReusableCell(withIdentifier: "EGFreshManTableViewCell")!
            
        default:
            var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
            if (cell == nil) {
                cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: cellID)
            }
            cell?.textLabel?.text = self.funtions[indexPath.row]
            return cell!
        }
    }
    
    
}
