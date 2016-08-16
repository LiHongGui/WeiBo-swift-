//
//  MainViewController.swift
//  新浪微博(Swift)
//
//  Created by MichaelLi on 16/8/15.
//  Copyright © 2016年 lihonggui. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //加载子视图
        addChildViewControllers()

         
    }

//    private func addChildViewControllers()
//    {
//        //设置 home 界面
//        let home = HomeViewController()
//        //设置导航控制器
//        let navigationHome = UINavigationController(rootViewController: home)
//        addChildViewController(navigationHome)
//
//        //添加 item
//        home.title = "首页"
//        home.tabBarItem.image = UIImage(named: "tabbar_home" )
//
//        //设置消息界面
//        let message = MessageViewController()
//        let navigationMessage = UINavigationController(rootViewController: message)
//        addChildViewController(navigationMessage)
//        message.title = "消息"
//        message.tabBarItem.image = UIImage(named: "tabbar_message_center")
//
//        //设置 discover界面
//        let discover = DiscoverViewController()
//        let navigationDiscover = UINavigationController(rootViewController: discover)
//        addChildViewController(navigationDiscover)
//        discover.title = "发现"
//        discover.tabBarItem.image = UIImage(named: "tabbar_discover")
//
//        //设置 profile 界面
//        let proflie = ProflieViewController()
//        let navigationProflie = UINavigationController(rootViewController: proflie)
//        addChildViewController(navigationProflie)
//        proflie.title = "我"
//        proflie.tabBarItem.image = UIImage(named: "tabbar_profile")
//
//    }
/*------简化代码------*/
    private func addChildViewControllers()
    {
        addChildViewController(HomeViewController(), title: "首页", imageNamed: "tabbar_home" )
        addChildViewController(HomeViewController(), title: "消息", imageNamed: "tabbar_message_center" )
        addChildViewController(HomeViewController(), title: "发现", imageNamed: "tabbar_discover" )
        addChildViewController(HomeViewController(), title: "我", imageNamed: "tabbar_profile" )
        //图片文字进行渲染3
        self.tabBar.tintColor = UIColor.orangeColor()
    }
    //重载
    private func addChildViewController(vc: UIViewController,title: String,imageNamed:String) {
        let navigation = UINavigationController(rootViewController: vc)
        vc.title = title
        vc.tabBarItem.image = UIImage(named:imageNamed )
        //设置图片且进行渲染1
//         vc.tabBarItem.selectedImage = UIImage(named:imageNamed + "_highlighted" )
        //设置图片且进行渲染2(纯代码)
//        vc.tabBarItem.selectedImage = UIImage(named:imageNamed + "_highlighted" )?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        //设置文字是颜色
//        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orangeColor()], forState: UIControlState.Selected)

        addChildViewController(navigation)
    }

}



