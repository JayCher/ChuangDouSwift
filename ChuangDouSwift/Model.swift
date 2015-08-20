//
//  Model.swift
//  ChuangDouSwift
//
//  Created by Cher on 15/8/19.
//  Copyright (c) 2015年 com.saikuTest. All rights reserved.
//

import UIKit

class Model: NSObject {
   
     var title: NSString?
     var task_id: NSString?
     var pictures: NSString?
     var open: NSString?
     var close: NSString?
     var reward: NSNumber?
     var official: NSNumber?
     var status: NSNumber?
     var foreign_screenshot: NSString?
     var local_screenshot: NSString?
     var portrait: NSString?
     
     
     override func  setValue(value: AnyObject?, forKey key: String) {
     
          super.setValue(value, forKey: key)
     
     }
     
     override func setValue(value: AnyObject?, forUndefinedKey key: String) {
          super.setValue(value, forUndefinedKey: key)
     }
     
     
}
