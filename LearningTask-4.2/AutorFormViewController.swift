//
//  ViewController.swift
//  LearningTask-4.2
//
//  Created by rafael.rollo on 17/02/2022.
//

import UIKit

class AutorFormViewController: UIViewController {
    

    @IBOutlet weak var fotoTextField: UITextField!
    @IBOutlet weak var bioTextField: UITextField!
    @IBOutlet weak var autorTextField: UITextField!
    @IBOutlet weak var tecnologiaTextField: UITextField!
    
    typealias ValidationMessage = String
    
    
    @IBAction func buttonSalvarPressed(_ sender: UIButton) {
        let (isFormValid, validationMessage) = checkForm()
        
        showAlert(checkIf:isFormValid, withMessage: validationMessage)
        
    }
    
    func checkForm() -> (Bool, ValidationMessage){
        guard let foto = fotoTextField.text, !foto.isEmpty else{
            return (false, "Informe a URL da foto do autor")
        }
        guard let nome = autorTextField.text, !nome.isEmpty else{
            return (false, "Nome não pode estar em branco")
        }
        guard let bio = bioTextField.text, !bio.isEmpty else{
            return (false, "A bio do autor não pode estar em branco")
        }
        guard let tecnologia = tecnologiaTextField.text, !tecnologia.isEmpty else{
            return (false, "Informe as tecnologias sobre as quais o autor escreve")
        }

        return (true, "Autor cadastrado com Sucesso" )
    }
    
    
    func showAlert(checkIf formIsValid: Bool, withMessage validationMessage: ValidationMessage){
        
        if formIsValid {
            let alert = UIAlertController(title: "Feito", message: validationMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true)
        }else{
            let alert = UIAlertController(title: "Erro", message: validationMessage, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true)
        }
        
        
    }
}
