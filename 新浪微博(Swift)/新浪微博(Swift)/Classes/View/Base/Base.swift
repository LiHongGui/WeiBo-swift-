//
//  Base.swift
//  新浪微博(Swift)
//
//  Created by MichaelLi on 16/8/16.
//  Copyright © 2016年 lihonggui. All rights reserved.
//

import UIKit

class Base: UITableViewController {
    let visitView  = false
    //加载视图时进行判断--->这个方法是纯代码准备的
    override func loadView() {
        //调用 super.loadView 时,无变化,不调用时是一片空白
//        super.loadView()

    }

    private func VisitorLoginInView()
    {
      view = UIView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
