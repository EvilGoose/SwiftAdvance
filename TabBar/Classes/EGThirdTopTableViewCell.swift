//
//  EGThirdTopTableViewCell.swift
//  TabBar
//
//  Created by PD on 2017/12/21.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit
import SnapKit

enum topCellActions {
    case touchIcon
    case touchNameLabel
    case gotoSettings
}

typealias swiftBlock = (_ action: topCellActions) -> Void



class EGThirdTopTableViewCell: UITableViewCell {

    let icon = UIImageView.init(image: UIImage.init(named: "icon"))
    let nameLabel = UILabel.init()
    var callBack: swiftBlock?
    
    func callBackBlock(block: @escaping (_ str: topCellActions) -> Void) {
        callBack = block
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: false )

        // Configure the view for the selected state
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.initSubviews()
        self.initActions()
        self.backgroundColor = UIColor.lightGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initSubviews() {
        self.addSubview(icon)
        self.addSubview(nameLabel)
        
        icon.layer.cornerRadius = 60
        icon.layer.borderWidth = 1
        icon.layer.borderColor = UIColor.yellow.cgColor
        icon.layer.masksToBounds = true
        icon.backgroundColor = UIColor.red
        
        nameLabel.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight(rawValue: 2.0))
        nameLabel.text = "Helo"
        
    }
    
    func initActions() {
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(showOpinions))
        icon.isUserInteractionEnabled = true
        icon.addGestureRecognizer(tap)
    } 
    
    @objc func showOpinions() {
        if callBack != nil {
            callBack!(.touchIcon);
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        icon.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(120)
            make.center.equalTo(self)
        }
        
        nameLabel.snp.makeConstraints { (make) -> Void in
            make.centerX.equalTo(icon)
            make.top.equalTo(icon.snp.bottom).offset(20)
        }
        
    }
}
    

