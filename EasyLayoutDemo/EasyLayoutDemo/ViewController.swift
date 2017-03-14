//
//  ViewController.swift
//  EasyLayoutDemo
//
//  Created by Jejay on 17/3/14.
//  Copyright © 2017年 jejay. All rights reserved.
//

import UIKit
import EasyLayout

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view1: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.redColor()
            return view
        }()
        let view2: UIView = {
            let view = UIView()
            view.backgroundColor = UIColor.greenColor()
            return view
        }()
        
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addConstraints([
            view1.es.top .= self.es_topLayoutGuideBottom .+ 50,
            view1.es.centerX .= self.view.es.centerX,
            view1.es.height .= 50,
            view1.es.width .= self.view.es.width .* 0.5,
            
            view2.es.top .= view1.es.bottom .+ 50,
            view2.es.centerX .= view1.es.centerX,
            view2.es.height .= view1.es.height .* 2 .+ 50,
            view2.es.width .= 1000 .| 900,
            view2.es.width .<= view1.es.width .- 50,
            
            ])
        
    }
    
}

