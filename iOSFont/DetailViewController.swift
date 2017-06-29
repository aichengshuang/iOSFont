//
//  DetailViewController.swift
//  iOSFont
//
//  Created by aichengshuang on 2017/6/2.
//  Copyright © 2017年 oraro. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var fontType: String?

    @IBOutlet var labs: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "详情"
        
        for lab in labs {
            if fontType == "Zapfino" {
                lab.font = UIFont.init(name: fontType!, size: 15)
            }else{
                lab.font = UIFont.init(name: fontType!, size: 25)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
