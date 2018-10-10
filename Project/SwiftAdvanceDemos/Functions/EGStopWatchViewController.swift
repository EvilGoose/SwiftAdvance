//
//  EGStopWatchViewController.swift
//  SwiftAdvanceDemos
//
//  Created by PD on 2017/11/30.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGStopWatchViewController: EGBasicViewController {
    private var timer : Timer?
    
    private let presentLable = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT * 0.5))
    
    private let resetButton = UIButton.init(type: UIButtonType.custom)
    
    private let playButton = UIButton.init(type: UIButtonType.custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.initialSubviews()
    }
    
    func initialSubviews() {
        presentLable.text = ""
        presentLable.backgroundColor = UIColor.lightGray
        presentLable.font = UIFont.systemFont(ofSize: 18)
        presentLable.textAlignment = NSTextAlignment.center
        
        resetButton.setTitle("重置", for: UIControlState.normal)
        resetButton.backgroundColor = UIColor.blue
        resetButton.addTarget(self, action: #selector(userClick), for: UIControlEvents.touchUpInside)
        
        playButton.setTitle("开始", for: UIControlState.normal)
        playButton.setTitle("暂停", for: UIControlState.selected)
        playButton.backgroundColor = UIColor.orange
        playButton.addTarget(self, action: #selector(userClick), for: UIControlEvents.touchUpInside)

        self.view.addSubview(presentLable)
        self.view.addSubview(resetButton)
        self.view.addSubview(playButton)
    }
   
    @objc func userClick(_ sender: UIButton) {
        if sender.isEqual(resetButton) {
            self.addCycleTimer()

        }else {
            sender.isSelected = !sender.isSelected
            if sender.isSelected {
                timer?.invalidate()
            }else {
                timer?.fireDate = NSDate.distantPast
            }
        }
    }
    
    fileprivate func addCycleTimer() {
        timer = Timer(timeInterval: 1.0, target: self, selector: #selector(handleTimer), userInfo: nil, repeats: true)
        RunLoop.main.add(timer!, forMode:RunLoopMode.commonModes)
    }
    
    @objc private func handleTimer (){
        let currentDate = Date(timeIntervalSinceNow: 1)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        presentLable.text = dateFormatter.string(from: currentDate)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        presentLable.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(SCREEN_HEIGHT * 0.5)
        }
        
        playButton.snp.makeConstraints { (make) in
            make.top.equalTo(presentLable.snp.bottom)
            make.left.bottom.equalToSuperview()
            make.width.equalTo(SCREEN_WIDTH * 0.5)
        }
        
        resetButton.snp.makeConstraints { (make) in
            make.top.equalTo(presentLable.snp.bottom)
            make.right.bottom.equalToSuperview()
            make.width.equalTo(SCREEN_WIDTH * 0.5)
        }
        
    }
    
}
