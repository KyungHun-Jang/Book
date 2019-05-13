//
//  FirstViewController.swift
//  Book
//
//  Created by ktds 10 on 13/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, SecondViewControllerDelegate {
    var newValue: String = ""
    
    func delegaeMethod(newValue: String) {
        print("New Value = \(newValue)")
    }
    
    
    var firstValue:String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func firstMethod(newValue:String){
        print("New Value = \(newValue)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        
        // Pass the selected object to the new view controller.
        
        if let vc = segue.destination as? SecondViewController {
            vc.newValue = "Hello, World"
            vc.delegate = self
        }
        
    }


}
