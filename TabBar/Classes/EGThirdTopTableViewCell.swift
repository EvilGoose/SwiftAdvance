//
//  EGThirdTopTableViewCell.swift
//  TabBar
//
//  Created by PD on 2017/12/21.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit
import SnapKit

class EGThirdTopTableViewCell: UITableViewCell {

    let icon = UIImageView.init(image: UIImage.init(named: "icon"))
    let nameLabel = UILabel.init()
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: false )

        // Configure the view for the selected state
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.initSubviews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initSubviews() {
        self.addSubview(icon)
        self.addSubview(nameLabel)
        icon.backgroundColor = UIColor.red
        nameLabel.text = "Helo"
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        icon.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(50)
            make.center.equalTo(self)
        }
        
        nameLabel.snp.makeConstraints { (make) -> Void in
            make.centerX.equalTo(icon)
            make.top.equalTo(icon.snp.bottom).offset(20)
        }
        
    }
}
    

