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
        return availableOdds.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return availableOdds[row]
    }
    
    //Connection Variables from Storyboard to ViewController
    
    @IBOutlet var firstNumberField: UITextField!
    @IBOutlet var secondNumberField: UITextField!
    @IBOutlet var oddsPickerView: UIPickerView!
    @IBOutlet var textView: UITextView!
    
    //Connection buttons/functions (Display data in text view below buttons)
    
    @IBAction func goButton(_ sender: UIButton) {
        textView.text = "Your number is \(firstNumberField.text!) \nTheir number is \(secondNumberField.text!) \n The odds are " //Need to figure out how to get pickerView Selection
        }
    @IBAction func resetButton(_ sender: UIButton) {
    }
    
    //Array for pickerView (Need to optimise)
    
    let availableOdds = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50"]
    
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
