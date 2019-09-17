//
//  ColorTransferDelegate.swift
//  Color-Magic-2
//
//  Created by Manar Laith on 1/21/19.
//  Copyright © 2019 Manar Laith. All rights reserved.
//

import Foundation
import UIKit
protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String )
}
