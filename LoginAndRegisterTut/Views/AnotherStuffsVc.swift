//
//  AnotherStuffsScrVc.swift
//  LoginAndRegisterTut
//
//  Created by Claudio on 18/04/2018.
//  Copyright © 2018 Claudio. All rights reserved.
//

import UIKit

class AnotherStuffsVc: UIViewController {

    @IBAction func login(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func toMainScreen(_ sender: Any) {
        // Authentication of the user in some webservice or BAAS, other necessary procedures.
        // Authenticated user receives a token
        KeychainWrapper.standard.set("YourAuthenticationToken", forKey: "UserToken")
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainOneVc") as! MainOneVc
        self.navigationController?.setViewControllers([vc], animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
