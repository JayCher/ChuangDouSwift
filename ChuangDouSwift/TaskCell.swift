//
//  TaskCell.swift
//  ChuangDouSwift
//
//  Created by Cher on 15/8/19.
//  Copyright (c) 2015年 com.saikuTest. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {

     
     
     
     var bgImageView: UIImageView?
     var taskLabel: UILabel?
     var taskLabelTime: UILabel?
     var pricesImageView: UIImageView?
     var taskPrices: UILabel?
     var userImageView: UIImageView?
     var titleBgView: UIView?
     
     override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
          
          super.init(style: style, reuseIdentifier: reuseIdentifier)
          
          
          self.initView()
     }

     required init(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     

     func initView(){
          
          bgImageView = UIImageView(frame: CGRectZero)
          bgImageView?.contentMode = UIViewContentMode.ScaleAspectFill
          bgImageView?.layer.cornerRadius = 8
          bgImageView?.layer.masksToBounds = true
     
          taskLabel = UILabel(frame: CGRectZero)
          taskLabelTime = UILabel(frame: CGRectZero)
          taskPrices = UILabel(frame: CGRectZero)
          taskLabel = UILabel(frame: CGRectZero)
          userImageView = UIImageView(frame: CGRectZero)
          titleBgView = UIView(frame: CGRectZero)
          //titleBgView?.backgroundColor = UIColor(red: <#CGFloat#>, green: <#CGFloat#>, blue: <#CGFloat#>, alpha: <#CGFloat#>))
          titleBgView?.layer.cornerRadius = 8
          titleBgView?.layer.masksToBounds = true
          
          
     }
     
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
