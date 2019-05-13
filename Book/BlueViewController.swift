//
//  BlueViewController.swift
//  Book
//
//  Created by ktds 10 on 13/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let notificationCenter = NotificationCenter.default
        
        notificationCenter.addObserver(self, selector: #selector(changeBackcolor(_:)), name: NSNotification.Name("CHANGE_BACK_COLOR"), object: nil)
        
    }
    
    @objc func changeBackcolor(_ notification:Notification){
        //self.view.backgroundColor = UIColor.black
        if let color = notification.userInfo?["color"] as? UIColor {
            self.view.backgroundColor = color
        }
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
