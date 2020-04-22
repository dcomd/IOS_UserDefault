//
//  ViewController.swift
//  UserDefault
//
//  Created by Alexandre de Oliveira Nepomuceno on 22/04/20.
//  Copyright © 2020 Alexandre de Oliveira Nepomuceno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textDados: UITextView!
    let chave = "dados"
    
    @IBAction func btnSalvar(_ sender: Any) {
        
        if let text = textDados.text {
            
            UserDefaults.standard.set(text, forKey: chave)
        }
    }
    
    func recuperarDados()-> String{
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
            return textoRecuperado as! String
        }
        
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textDados.text = recuperarDados()
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }


}

