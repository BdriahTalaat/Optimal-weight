//
//  ViewController.swift
//  weight
//
//  Created by Bdriah Talaat on 06/05/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    //MARK: OUTLET
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var lenghtLabel: UILabel!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var lenghtTextField: UITextField!
    @IBOutlet weak var weightNumberLabel: UILabel!
    @IBOutlet weak var weightView: UIView!
    @IBOutlet weak var ratingWeightLabel: UILabel!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var calculateButton: UIButton!
    
    //MARK: VARIABLE
   
    
    //MARK: LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weightView.layer.cornerRadius = weightView.frame.width/15
        buttonView.layer.cornerRadius = buttonView.frame.width/15
        
    }

    @IBAction func calculateWeightButton(_ sender: Any) {
        
        let weight : Double = Double(weightTextField.text!)!
        let lenght : Double = Double(lenghtTextField.text!)!
        
        let calculate = (weight/(lenght * lenght) * 10000)
        
        weightNumberLabel.text = "\(calculate)"
        
        if (calculate < 18.5){
            weightView.backgroundColor? = .systemYellow
            buttonView.backgroundColor = .systemYellow
            weightLabel.textColor = .systemYellow
            lenghtLabel.textColor = .systemYellow
            ratingWeightLabel.text = "نقص الوزن"
            
        }
        else if (calculate <= 24.9 && calculate >= 18.5){
            weightView.backgroundColor? = .systemGreen
            buttonView.backgroundColor = .systemGreen
            weightLabel.textColor = .systemGreen
            lenghtLabel.textColor = .systemGreen
            ratingWeightLabel.text = "الوزن الطبيعي"
        }
        else if (calculate <= 29.9 && calculate >= 25){
            weightView.backgroundColor? = .systemOrange
            buttonView.backgroundColor = .systemOrange
            weightLabel.textColor = .systemOrange
            lenghtLabel.textColor = .systemOrange
            ratingWeightLabel.text = "زيادة الوزن"
        }
        else if (calculate <= 34.9 && calculate >= 30){
            weightView.backgroundColor? = .systemRed
            buttonView.backgroundColor = .systemRed
            weightLabel.textColor = .systemRed
            lenghtLabel.textColor = .systemRed
            ratingWeightLabel.text = "السمنة من الدرجة اولى"
        }
        else if (calculate <= 39.9 && calculate >= 35){
            weightView.backgroundColor? = .systemBrown
            buttonView.backgroundColor = .systemBrown
            weightLabel.textColor = .systemBrown
            lenghtLabel.textColor = .systemBrown
            ratingWeightLabel.text = "السمنة من الدرجة الثانية"
        }
        else{
            weightView.backgroundColor? = .darkGray
            buttonView.backgroundColor = .darkGray
            weightLabel.textColor = .darkGray
            lenghtLabel.textColor = .darkGray
            ratingWeightLabel.text = "السمنة المفرطة"
            ratingWeightLabel.textColor = .white
            weightNumberLabel.textColor = .white
            calculateButton.tintColor = .white
        }
        
    }
    
}

