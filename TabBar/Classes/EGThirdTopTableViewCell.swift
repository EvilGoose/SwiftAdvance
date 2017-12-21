//
//  EGThirdTopTableViewCell.swift
//  TabBar
//
//  Created by PD on 2017/12/21.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGThirdTopTableViewCell: UITableViewCell {

    let icon = UIImageView.init(image: UIImage.init(named: "icon"))
    let nameLabel = UILabel.init()
    let nationFlag = UIImageView.init(image: UIImage.init(named: "flag"))
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

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
        
    }
    
    override func layoutSubviews() {
         super.layoutSubviews()
        
        
    }
    
}
