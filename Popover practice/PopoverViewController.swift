//
//  PopoverViewController.swift
//  Popover practice
//
//  Created by Hsuen-Ju Li on 2018/7/11.
//  Copyright © 2018年 Hsuen-Ju Li. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController {

    @IBOutlet var textLabel : UILabel!{
        didSet{
            textLabel.numberOfLines = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = "Here is popover view controller"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            if (touch.view == self.view){
                dismiss(animated: true, completion: nil)
            }
        }
    }


}
