import UIKit

class MainTwoVc: UIViewController {

    @IBAction func exit(_ sender: Any) {
        // clear the authentication token
        KeychainWrapper.standard.removeObject(forKey: "UserToken")
        
        let LoginVc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVc") as! LoginVc
        var arrayVc:[UIViewController] = []
        arrayVc.append(LoginVc)
        arrayVc.append((self.navigationController?.visibleViewController!)!)
        self.navigationController?.viewControllers = arrayVc
        
        self.navigationController?.setViewControllers([LoginVc], animated: true)
        self.navigationController?.dismiss(animated: true, completion: nil)
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
