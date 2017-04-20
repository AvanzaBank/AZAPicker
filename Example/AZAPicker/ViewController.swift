//
//  ViewController.swift
//  AZAPicker
//
//  Created by Viktor Rutberg on 12/17/2016.
//  Copyright (c) 2016 Viktor Rutberg. All rights reserved.
//

import UIKit
import AZAPicker

struct PickerItem: AZAPickerItem {
    let number: Int

    var description: String {
        return "\(number) yrs"
    }
}

class ViewController: UIViewController, AZAPickerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let config = AZAPickerConfiguration(items: (1...100).map { PickerItem(number: $0) },
                                           defaultSelectedIndex: 99,
                                           selectionRadiusInPercent: 0.5,
                                           itemWidth: 80)
        
        let pickerView = AZAPicker(with: config, frame: .zero)

        pickerView.backgroundColor = .white
        pickerView.delegate = self
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(pickerView)
        
        NSLayoutConstraint(item: pickerView, attribute: .top, relatedBy: .equal, toItem: topLayoutGuide, attribute: .top, multiplier: 1, constant: 20).isActive = true
        
        NSLayoutConstraint(item: pickerView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: pickerView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: pickerView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 80).isActive = true
    }
    
    func picker<T>(_ sender: AZAPicker, didSelect item: T) {
        print("didSelectItem: \(item)")
    }
}

