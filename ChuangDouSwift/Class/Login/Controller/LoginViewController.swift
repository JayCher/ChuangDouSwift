//
//  LoginViewController.swift
//  ChuangDouSwift
//
//  Created by Cher on 15/11/30.
//  Copyright © 2015年 com.saikuTest. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

     override func viewWillAppear(animated: Bool) {
          super.viewWillAppear(animated)
          self.navigationController?.navigationBar.hidden = true
     }
     
     
     
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.orangeColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
