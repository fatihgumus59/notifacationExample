//
//  ViewController.swift
//  notifacationExample
//
//  Created by Fatih Gümüş on 20.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eMail: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var rePassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logIn(_ sender: Any) {
        
        if eMail.text == ""{
            alertMessage(title: "Hata!", message: "E-Posta alanı boş olamaz.")
        }else if(password.text == ""){
            alertMessage(title: "Hata!", message: "Şifre alanı boş olamaz.")
        }else if(rePassword.text == ""){
            alertMessage(title: "Hata!", message: "Şifre tekrarı alanı boş olamaz.")
        }else if(password.text != rePassword.text){
            alertMessage(title: "Hata!", message: "Şifreler eşleşmiyor.")
        }else{
            alertMessage(title: "Başarılı!", message: "Başarıyla giriş yapıldı.")
        }
        
      
    }
    
    func alertMessage(title:String,message : String){
        let loginAlert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert);
        
        let loginButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default) { UIAlertAction in
            print("Giriş Yapıldı.")
        }
        
        loginAlert.addAction(loginButton)
        
        //kullanıcıya göstermek için present kullandık
        self.present(loginAlert, animated: true);
    }
    
}

