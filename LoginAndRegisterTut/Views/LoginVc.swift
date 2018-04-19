import UIKit

class LoginVc: UIViewController {
    @IBAction func login(_ sender: Any) {
        // Authentication of the user in some WebService or BAAS, other necessary procedures.
        // Authenticated user receives a token and fill user object data
        
        KeychainWrapper.standard.set("YourAuthenticationToken", forKey: "UserToken")
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainOneVc") as! MainOneVc
        self.navigationController?.setViewControllers([vc], animated: true)
    }
    
    @IBAction func noLoginAccess(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainOneVc") as! MainOneVc
        self.navigationController?.setViewControllers([vc], animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

