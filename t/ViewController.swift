//
//  ViewController.swift
//  t
//
//  Created by 陆天明 on 16/7/8.
//  Copyright © 2016年 陆天明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func tianjia(sender: AnyObject) {
        let uname = self.name.text!
        let mobile = self.num.text!
        let sql = "insert into t_user(uname,mobile) values('\(uname)','\(mobile)')"
        print("sql: \(sql)")
        let result = db.execute(sql)
        print(result)
    }
    @IBOutlet weak var num: UITextField!
    @IBOutlet weak var name: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        db = SQLiteDB.sharedInstance()
        
        db.execute("create table if not exists t_user(uid integer primary key,uname varchar(20),mobile varchar(20))")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

