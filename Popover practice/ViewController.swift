//
//  ViewController.swift
//  Popover practice
//
//  Created by Hsuen-Ju Li on 2018/7/11.
//  Copyright © 2018年 Hsuen-Ju Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //After viewDidLoad present a pop up view
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        if let popoverViewController = storyboard?.instantiateViewController(withIdentifier: "popover") as? PopoverViewController{
        popoverViewController.providesPresentationContextTransitionStyle = true
            
            popoverViewController.definesPresentationContext = true
            popoverViewController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            
            popoverViewController.view.backgroundColor = UIColor.init(white: 0.4, alpha: 0.8)
            present(popoverViewController,animated: true)
            
            
        }
    }
    



}

