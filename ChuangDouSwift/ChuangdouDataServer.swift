//
//  ChuangdouDataServer.swift
//  ChuangDouSwift
//
//  Created by Cher on 15/8/18.
//  Copyright (c) 2015年 com.saikuTest. All rights reserved.
//

import UIKit



class ChuangdouDataServer: NSObject {
   
     
     

     override init() {
          
          super.init()
          
         
     }
     
     
     func requestUrl(urlString: String){
          var url: NSURL = NSURL(string: urlString)!
          let request: NSURLRequest = NSURLRequest(URL: url)
          
          NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler:{
               (response, data, error) -> Void in
               
               if (error != nil) {
                    //Handle Error here
               }else{
                    //Handle data in NSData type
               }
               
          })
     }
     
     
     
     
     func markNum() -> (Int -> Int){
          
          func addOne(nubmer: Int) -> Int{
               return 1 + nubmer
          }
          
          return addOne
     }
     
     

}

