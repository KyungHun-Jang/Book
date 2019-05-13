//
//  SecondViewController.swift
//  Book
//
//  Created by ktds 10 on 13/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
    var newValue:String { get set }
    func delegaeMethod(newValue:String)
}

class SecondViewController: UIViewController {
    
    var newValue:String?
    
    var delegate:SecondViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var test = self.newValue

        // Do any additional setup after loading the view.
    }
    

    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
        delegate?.delegaeMethod(newValue: "First")
        
        //delegate?.firstValue = "Hello, First!!"
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
