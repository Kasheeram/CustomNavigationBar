//
//  ViewController.swift
//  CustomNavigationBar
//
//  Created by Pro Retina on 28/12/17.
//  Copyright © 2017 Pro Retina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var editItem: UIBarButtonItem!
    @IBOutlet weak var doneItem: UIBarButtonItem!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = hexStringToUIColor(hex: "#D74839")
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
        
        
        
//        if searchTextField!.responds(to: #selector(getter: UITextField.attributedPlaceholder)) {
//            let attributeDict = [NSAttributedStringKey.foregroundColor: UIColor.white]
//            searchTextField!.attributedPlaceholder = NSAttributedString(string: "Search", attributes: attributeDict)
//        }
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
}

