//
//  EGThirdViewController.swift
//  SwifterProject
//
//  Created by EG on 2017/8/3.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGThirdViewController: EGBasicViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		self.view.backgroundColor = UIColor.brown
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
