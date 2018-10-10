//
//  EGBannerTableViewCell.swift
//  SwiftAdvanceDemos
//
//  Created by 方伟易 on 2018/9/8.
//  Copyright © 2018年 EGMade. All rights reserved.
//

import UIKit

class EGBannerTableViewCell: UITableViewCell {

    let imageNames = ["Banner_1", "Banner_2", "Banner_3", "Banner_4"]
    let originWidth = Float((SCREEN_WIDTH - 24) * 0.5)
    let scrollTimer = Timer.init(timeInterval: 1.5, target: self, selector: #selector(scrollAction), userInfo: nil, repeats: true)

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addSubview(scrollView)
        self.addImages()
        
        RunLoop.main.add(scrollTimer, forMode: RunLoopMode.commonModes)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(scrollView)
        self.addImages()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        scrollView.snp.makeConstraints { (make) in
            make.top.left.equalToSuperview().offset(12)
            make.right.bottom.equalToSuperview().offset(-12)
        }
    }
    
    lazy var scrollView = {()->UIScrollView in
        let scrollView = UIScrollView.init(frame: self.bounds)
        scrollView.contentSize = CGSize.init(width: Int(SCREEN_WIDTH - 24) * (imageNames.count), height: 200 - 24)
        scrollView.isPagingEnabled = true
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.bounces = false
        return scrollView
    }()

    func addImages() {
        var i:Float = 0
        for name in imageNames {
            let imageView = UIImageView.init(image: UIImage.init(named: name))
            scrollView.addSubview(imageView)
            imageView.center = CGPoint.init(x:Double((2 * i + 1) * originWidth) , y: 100.0)//一个蛋疼的swift数据类型学习过程，CGFloat，Float···
            i = i + 1;
        }
    }
    
    @objc func scrollAction() {
        scrollView.contentOffset = CGPoint.init(x: (Double(2 * originWidth + Float(scrollView.contentOffset.x))), y:0.0)
        if scrollView.contentOffset.x == CGFloat(-4 * originWidth) {
            scrollView.contentOffset = CGPoint.zero
        }
    }
}
