//
//  SecondViewController.swift
//  ProjectTwo
//
//  Created by Yanez, Rikki L on 4/8/19.
//  Copyright © 2019 com.rikkiyanez. All rights reserved.
//

import UIKit
var selection:String!

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var genreLabel: UILabel!
    
    
    @IBOutlet weak var genreVal: UILabel!
    let items = ["Country", "Pop", "Rock", "Punk" , "Indie"]

    
    @IBOutlet weak var picker: UIPickerView!
    

    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        genreVal.text = "You selected: " + selection
        global.genreVar = selection
    }

    
    @IBAction func myNext(_ sender: UIButton) {
        if (global.genreVar == "Country") {genreInt = 1}
        
        if (global.genreVar == "Pop") {genreInt = 3}
        
        if (global.genreVar == "Rock") {genreInt = 5}
        
        if (global.genreVar == "Punk") {genreInt = 7}
        
        if (global.genreVar == "Indie") {genreInt = 9}
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        // Do any additional setup after loading the view.
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
