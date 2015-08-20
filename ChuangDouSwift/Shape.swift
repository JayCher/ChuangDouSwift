//
//  Shape.swift
//  ChuangDouSwift
//
//  Created by Cher on 15/8/19.
//  Copyright (c) 2015年 com.saikuTest. All rights reserved.
//

import UIKit

class Shape: NSObject {
   
     
     var name  = "lucy"
     var r     = 99
     
//     init(nickName : NSString, rWidth : Double) {
//          
//          
//          self.name = nickName
//          self.r = rWidth
//          
//     }
     
     
     
     
     func nsLog() -> NSString {
          
          return "昵称为\(self.name) 宽度为\(self.r)"
     }
     
}
