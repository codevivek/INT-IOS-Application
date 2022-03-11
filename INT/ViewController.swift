//
//  ViewController.swift
//  INT
//
//  Created by english on 2021-09-30.
//

import UIKit

class ViewController: UIViewController {

    
@IBOutlet weak var txtEmail: UITextField!
    
@IBOutlet weak var txtPassword: UITextField!
    
    
@IBAction func btnLogin(_ sender: Any) {
        if(txtEmail.text == "admin@int4fc.com" && txtPassword.text == "LaSalle2000" ){
guard let email : String = txtEmail.text, let password : String = txtPassword.text else{
            print("error")
            return
        }
performSegue(withIdentifier: "toSecondView", sender: nil)
                    }
                }
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
if (segue.identifier == "toSecondView"){
let tosecondViewController = segue.destination as! toSecondViewController
                    
guard let message : String = txtEmail.text else{
return
}
    
    tosecondViewController.data=message
   }
}
    
override func viewDidLoad() {
  super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


