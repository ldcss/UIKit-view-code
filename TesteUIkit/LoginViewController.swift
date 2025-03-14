//
//  ViewController.swift
//  TesteUIkit
//
//  Created by Lucas Daniel Costa da Silva on 14/03/25.
//

import UIKit

class LoginViewController: UIViewController {
  
  var screen: LoginScreen?
  
  override func loadView() {
    self.screen = LoginScreen()
    self.view = self.screen
  }

    override func viewDidLoad() {
        super.viewDidLoad()
      self.view.backgroundColor = .red

        // Do any additional setup after loading the view.
    }
  
  override func viewWillAppear(_ animated: Bool) {
    super.navigationController?.setNavigationBarHidden(true, animated: false)
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
