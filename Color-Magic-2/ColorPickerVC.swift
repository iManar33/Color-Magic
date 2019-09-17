//
//  ColorPickerVC.swift
//  Color-Magic-2
//
//  Created by Manar Laith on 1/21/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: ColorTransferDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func colorBtnWasPressed(_ sender: UIButton) {
        print(sender.titleLabel?.text!)
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel?.text)!)
        self.navigationController?.popViewController(animated: true)

    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
  
    
 

}
