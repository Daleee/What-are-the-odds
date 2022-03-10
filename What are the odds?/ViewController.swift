//
//  ViewController.swift
//  What are the odds?
//
//  Created by Dale Bobermien on 9/3/2022.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 50
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(row + 1)
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chosenOdds = String(row + 1)
    }
    //Connection Variables from Storyboard to ViewController
    
    @IBOutlet var firstNumberField: UITextField!
    @IBOutlet var secondNumberField: UITextField!
    @IBOutlet var oddsPickerView: UIPickerView!
    @IBOutlet var textView: UITextView!
    
    //Connection buttons/functions (Display data in text view below buttons)
    
    @IBAction func goButton(_ sender: UIButton) {
        textView.text = "Your number is \(firstNumberField.text!) \nTheir number is \(secondNumberField.text!) \nThe odds are \(chosenOdds)"
        //Need to figure out how to get pickerView Selection
        }
    @IBAction func resetButton(_ sender: UIButton) {
        self.firstNumberField.text = nil
        self.secondNumberField.text = nil
        self.textView.text = nil
    }
    
    var chosenOdds = ""
    
    //Loading the view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oddsPickerView.dataSource = self
        oddsPickerView.delegate = self
        firstNumberField.delegate = self
        secondNumberField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    //Safeguards for exiting device keyboard
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        firstNumberField.resignFirstResponder()
        secondNumberField.resignFirstResponder()
    }
    
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
