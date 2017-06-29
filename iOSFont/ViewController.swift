//
//  ViewController.swift
//  iOSFont
//
//  Created by aichengshuang on 2017/6/1.
//  Copyright © 2017年 oraro. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var fontsArr = Array<String>()
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "iOS字体"
        
        let array: [String] = UIFont.familyNames
        for (_,value) in array.enumerated() {
            let names = UIFont.fontNames(forFamilyName: value)
            fontsArr += names
        }
        
        let tableView = UITableView.init(frame: view.bounds)
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fontsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = fontsArr[indexPath.row]
        cell.textLabel?.font = UIFont.init(name: fontsArr[indexPath.row], size: 17)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let detailVc = DetailViewController()
        detailVc.fontType = cell?.textLabel?.text
        navigationController?.pushViewController(detailVc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

