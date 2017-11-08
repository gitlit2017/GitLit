//
//  TapBarController.swift
//  GitLit
//
//  Created by Emil Astanov on 08.11.17.
//  Copyright © 2017 Emil Astanov. All rights reserved.
//

import UIKit

class TapBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = authDATA["login"].string!
    }
    @IBAction func extBtnPressed(_ sender: Any) {
        UserDefaults.standard.set(nil, forKey: "token")
        let AuthVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthVC")
        self.present(AuthVC!, animated: false)
    }
}
