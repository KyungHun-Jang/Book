//
//  RedViewController.swift
//  Book
//
//  Created by ktds 10 on 13/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func change(_ sender: Any) {
        let notificationCenter = NotificationCenter.default
        notificationCenter.post(name: NSNotification.Name("CHANGE_BACK_COLOR"), object: self, userInfo: ["color":UIColor.red])
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
