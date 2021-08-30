//
//  EditFormViewController.swift
//  DesafioFoton
//
//  Created by Rodrigo Dias on 28/08/21.
//

import UIKit

class EditFormViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var birthDateTextField: UITextField!
    @IBOutlet weak var cepTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var districtTextField: UITextField!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var streetNumberTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Looks for single or multiple taps.
        let tap = UITapGestureRecognizer(target: self, action: #selector(EditFormViewController.dismissKeyboard))
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }
    
    func validate() {
        if let name = nameTextField.text, !name.isEmpty {
            saveButton.isEnabled = true
        } else {
            saveButton.isEnabled = false
        }
    }
    
    @IBAction func save(_ sender: Any) {
        let model = Contact(context: context)
        model.name = nameTextField.text
        
        do {
            try context.save()
        } catch {
            print("Erro ao salvar")
        }
        navigationController?.presentationController?.delegate?.presentationControllerWillDismiss?(presentationController!)
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func cancel(_ sender: Any) {
        navigationController?.presentationController?.delegate?.presentationControllerWillDismiss?(presentationController!)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func onValueChange(_ sender: Any) {
        validate()
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}
