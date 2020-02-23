//
//  RegisterViewController.swift
//  IceBreaker
//
//  Created by Luis Hernandez on 22/02/2020.
//  Copyright (c) 2020 Luis Hernandez. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate
{
    
    @IBOutlet weak var avatarButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var pickColorButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var isUpdateScreen : Bool = false
    
    let alert_choose_avatar : String = "_alert_choose_avatar".localized
    let alert_enter_name : String = "_alert_enter_name".localized
    
    @IBAction func nextButtonClick(_ sender: Any) {
        
        let userData = UserData()
        saveName()
        
        if (userData.avatarId == 0) {
            
            AlertHelper.warn(delegate: self, message: alert_choose_avatar)
        }
        else if (userData.name.isEmpty) {
            
            AlertHelper.warn(delegate: self, message: alert_enter_name)
        }
        else {
            
            if (isUpdateScreen) {
                
                self.navigationController?.popViewController(animated: true)
            }
            else {
                
                if let target = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController {
                    target.navigationItem.hidesBackButton = true;
                    self.navigationController?.pushViewController(target, animated: true)
                }
            }
        }
    }
    
    
    // MARK: View lifecycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let userData = UserData()
        isUpdateScreen = userData.hasAllDataFilled
        setupUI()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        nameTextField.resignFirstResponder()
        saveName()
    }
    
    func saveName() {
        
        var userData = UserData()
        let name : String = nameTextField.text ?? ""
        userData.name = name
        userData.save()
    }
    let register_pick_color : String = "_register_pick_color".localized
    func setupUI() {
        
        nextButton.layer.cornerRadius = 10
        //nameTextField.text = UIDevice.current.name
        nameTextField.delegate = self
        pickColorButton.setTitle( register_pick_color , for: .normal)
        
    }
    let profile_title : String  = "_profile_title".localized
    let register_title : String  = "_register_title".localized
    let save : String  = "_save".localized
    let next_ : String  = "_next".localized
    
    func initData() {
        
        let userData = UserData()
        
        self.navigationItem.title = userData.hasAllDataFilled ? register_title : profile_title
        
        let buttonTitle = userData.hasAllDataFilled ? save : next_
        nextButton.setTitle(buttonTitle, for: .normal)
        
        avatarButton.setImage(UIImage(named:  "\(Constants.avatarImagePrefix)\(userData.avatarId)"), for: UIControl.State.normal)
        self.view.backgroundColor = Constants.colors[userData.colorId]
        
        nameTextField.text = nameTextField.text ?? userData.name
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        initData()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        
        return true
    }
}
