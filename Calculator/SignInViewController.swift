//
//  SignInViewController.swift
//  Calculator
//
//  Created by HGPMac63 on 8/3/18.
//  Copyright © 2018 Bossgodacid. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {

    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Email: UITextField!
    @IBAction func Login(_ sender: Any) {
        if Email.text! != nil && Password.text! != nil{
            Auth.auth().signIn(withEmail: Email.text!, password: Password.text!) { (user, error) in
                if user != nil{
                    print("user logged in")
                }else{
                    print(error?.localizedDescription)
                }
            }
        }
    }
    @IBAction func SignUp(_ sender: Any) {
        if Email.text! != nil && Password.text! != nil {
            Auth.auth().createUser(withEmail: Email.text!, password: Password.text!) { (user, error) in
                if user != nil{
                    print("user created")
                }else{
                    print(error?.localizedDescription)
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
