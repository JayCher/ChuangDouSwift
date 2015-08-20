//
//  ViewController.swift
//  ChuangDouSwift
//
//  Created by Cher on 15/8/18.
//  Copyright (c) 2015年 com.saikuTest. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

     // ? 可选值 
     // ! 我确定这里的的DytableView一定是非nil的，尽情调用吧
     var DytableView:UITableView?
     var DyData:NSMutableArray?
     var intArr:[Int]? // 定义整型数组
     
     //override 重写 //防止重写 -- final
     override func viewDidLoad() {
          super.viewDidLoad()
          
         // Alamofire
          self.DyData = NSMutableArray()
          //请求数据
          self.creatViews()
          self.getData()
          
          
          
          
          
          Alamofire.request(.GET, "https://api.500px.com/v1/photos").responseJSON() {
               (_, _, data, _) in
               println(data)
          }
          
          
          
          enum Rank : Int {
               
               case Ace = 1
               case Two, there
               case with
               func simple() -> NSString{
                    
                    switch self{
                    case .Ace:
                         return "acef"
                    case .there:
                         return "there"
                    case .with:
                         return "with"
                    default:
                         return "TOdoMore"
                    }
               }
               
               
          }
          
          
          
          let rank = Rank.Ace
          
          
          let ace = rank.simple()
          
          println("%d",ace)
          

          //闭包
          let ssss = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
          
          var reversed = ssss.sorted(>)
          
          println("\(reversed)")
          
          
     }


     
     func getData(){
          var url = "http://api.chuangdou.blazing.me/task/list?page=1&sort=news"
          
          let request = NSMutableURLRequest(URL: NSURL(string: url)!)
          
          //request.HTTPMethod = Method
          //[serializer setValue:@"iOS" forHTTPHeaderField:@"device"];
          //[serializer setValue:@"0.6" forHTTPHeaderField:@"versions"];
          //
          request.setValue("iOS", forHTTPHeaderField: "device")
          request.setValue("0.6", forHTTPHeaderField: "versions")
          request.setValue("7LZDEry3KlR2", forHTTPHeaderField: "id")
          request.setValue("92b7836d30e1b220f9be03d8cac0288f", forHTTPHeaderField: "token")
          request.setValue("application/json", forHTTPHeaderField: "Content-Type")
          
          
          var con = NSURLSession.sharedSession()
          
          
          
          var task = con.dataTaskWithRequest(request, completionHandler: { (data, respone, error) -> Void in
               
               
               var jsonData: AnyObject = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: nil)!
               
               var dic  = jsonData as! NSDictionary
               
               var arrData: NSArray = dic["data"] as! NSArray
               
               for dicData in arrData{
                    
                    println(dicData)
                    var model = Model()
                    model.setValuesForKeysWithDictionary(dicData as! [NSObject : AnyObject])
                    self.DyData?.addObject(model)
               }
               
               dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                    self.DytableView?.reloadData()
               })
               
               //println(jsonData)
               //println(respone)
          })
          
          task.resume()
          
     }
     
     
     
     func creatViews(){
          
          self.DytableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.Grouped)
          self.DytableView?.delegate = self
          self.DytableView?.dataSource = self
          self.DytableView?.rowHeight = 71.0
          //self.DytableView?.scrollsToTop =
          self.DytableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
          self.view.addSubview(self.DytableView!)
     }
     
     
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
     {
          return self.DyData!.count
     }
     
     
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
          
          let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
          cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
          
          var model = Model()
          
          model = self.DyData!.objectAtIndex(indexPath.row) as! Model
          
          cell.textLabel?.text = model.title as? String
          return cell
     }
     
     
     
     
     func backwards(s1: String, s2: String) -> Bool {
          return s1 > s2
     }
     
     
     
     
     func markTest() -> (Int -> Int){
          
          func addOne(nub : Int) -> Int{
               
               return 1 + nub
          }
          
          return addOne
     }
     
     
     func hanx(list : [Int], condfine : Int -> Bool) -> Bool{
          
          for item in list{
               
               if condfine(item){
                    return true
               }
          }
          
          return false
     }
     
     
     func lessThan(nub : Int) -> Bool{
          return nub < 10
     }
     
     
     
 }

