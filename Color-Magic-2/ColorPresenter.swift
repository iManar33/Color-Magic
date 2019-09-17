//
//  ViewController.swift
//  Color-Magic-2
//
//  Created by Manar Laith on 1/21/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import UIKit

class ColorPresenter: UIViewController , ColorTransferDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return } //with gurd we must use else , "as?" insted of "as!"
            colorPickerVC.delegate = self
        }
    }

}

