//
//  ViewFlightList.swift
//  3M-Memory-v0.1
//
//  Created by Jason Kwok on 7/9/2016.
//  Copyright © 2016 CPA. All rights reserved.
//

import Foundation
import UIKit



class ViewFlightList: ViewController,UIScrollViewDelegate{
    override func viewWillAppear(animated: Bool) {
        
        
    }
    
    public func <(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedAscending
    }
    
    extension NSDate: Comparable { }
    
    @IBOutlet weak var sv2: UIScrollView!
    var customerA: Customer!
    var screenSize: CGRect!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        screenSize =  UIScreen.mainScreen().bounds
        
        
        initsv2()
        
        for i in 0...3{
            //addObject()
           
            var fr = Customer.sharedCustomerInfo.flightRecords
            fr.sort({  })

            
        }
        
        
    }
    
    func addObject(){
        
        
        
    }
    
    func initsv2(){
        
        
        
        
        // 實際視圖範圍 為 3*2 個螢幕大小
        sv2.contentSize = CGSize(
            width: screenSize.width-20,
            height: 800)
        
        //BG
        sv2.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
        
        // 是否顯示水平的滑動條
        sv2.showsHorizontalScrollIndicator = false
        
        // 是否顯示垂直的滑動條
        sv2.showsVerticalScrollIndicator = true
        
        // 滑動條的樣式
        sv2.indicatorStyle = .Black
        
        // 是否可以滑動
        sv2.scrollEnabled = true
        
        // 是否可以按狀態列回到最上方
        sv2.scrollsToTop = false
        
        // 是否限制滑動時只能單個方向 垂直或水平滑動
        sv2.directionalLockEnabled = true
        
        // 滑動超過範圍時是否使用彈回效果
        sv2.bounces = false
        
        // 縮放元件的預設縮放大小
        sv2.zoomScale = 1.0
        
        // 縮放元件可縮小到的最小倍數
        sv2.minimumZoomScale = 1.0
        
        // 縮放元件可放大到的最大倍數
        sv2.maximumZoomScale = 1.0
        
        // 縮放元件縮放時是否在超過縮放倍數後使用彈回效果
        sv2.bouncesZoom = false
        
        // 設置委任對象
        sv2.delegate = self
        
        // 起始的可見視圖偏移量 預設為 (0, 0)
        // 設定這個值後 就會將原點滑動至這個點起始
        sv2.contentOffset = CGPoint(
            x: 0, y: 0)
        
        // 以一頁為單位滑動
        sv2.pagingEnabled = false
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}