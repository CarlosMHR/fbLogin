//
//  ViewController.swift
//  ejercicio1
//
//  Created by user218047 on 5/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var contentLoginView: UIView!
    @IBOutlet weak var separatorLoginView: UIView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var rememberButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    
    private let primaryColor = UIColor(red: 56/255, green: 117/255, blue: 233/255, alpha: 1)
    private let secundaryColor = UIColor(red: 173/255, green: 202/255, blue: 250/255, alpha: 1)
    private let grayColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.delegate = self
        passwordField.delegate = self
        //Redondear logo de FB
        logoImageView.layer.cornerRadius = logoImageView.bounds.height / 2
        logoImageView.clipsToBounds = true
        
        //Editar propiedades de contenedor de login
        contentLoginView.layer.borderColor = grayColor.cgColor
        contentLoginView.layer.borderWidth = 1
        contentLoginView.layer.cornerRadius = 3
        contentLoginView.clipsToBounds = true
        
        configureCornerRadius(button: loginButton, color: primaryColor, cornerRadius: 5, colorSecundary: secundaryColor)
        configureCornerRadius(button: createAccountButton, color: secundaryColor, cornerRadius: 5, colorSecundary: primaryColor)
        
        //Editar propiedades de boton login
        /*loginButton.layer.backgroundColor = primaryColor.cgColor
        loginButton.setTitleColor(secundaryColor, for: .normal)
        loginButton.layer.cornerRadius = 5
        loginButton.clipsToBounds = true
        
        
        
        //Editar propiedades de boton crear cuenta
        createAccountButton.layer.backgroundColor = secundaryColor.cgColor
        createAccountButton.setTitleColor(primaryColor, for: .normal)
        createAccountButton.layer.cornerRadius = 5
        createAccountButton.clipsToBounds = true*/
        
        
        //Editar propiedades de boton remember
        rememberButton.setTitleColor(primaryColor, for: .normal)
        
        separatorLoginView.layer.backgroundColor = grayColor.cgColor
        
        }
    
    func configureCornerRadius(button: UIButton ,color: UIColor, cornerRadius: CGFloat, colorSecundary: UIColor){
        
        button.setTitleColor(colorSecundary, for: .normal)
        button.layer.backgroundColor = color.cgColor
        button.layer.cornerRadius = cornerRadius
        button.clipsToBounds = true
        
    }


}

extension ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
}
