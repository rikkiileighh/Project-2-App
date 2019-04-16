//
//  ThirdViewController.swift
//  ProjectTwo
//
//  Created by Yanez, Rikki L on 4/8/19.
//  Copyright © 2019 com.rikkiyanez. All rights reserved.
//

import UIKit


class ThirdViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
        
    
    @IBOutlet weak var thePlaylist: UILabel!
    
    @IBOutlet weak var moodVal: UILabel!
    let items = ["Happy", "Sad", "Calm" , "Angry", "Romantic"]
    
    
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
            moodVal.text = "You selected: " + selection
            global.moodVar = selection
        }
        
        
    @IBAction func myResults(_ sender: UIButton) {
        if (global.moodVar == "Happy") {moodInt = 6}
        
        if (global.moodVar == "Sad") {moodInt = 2}
        
        if (global.moodVar == "Calm") {moodInt = 4}
        
        if (global.moodVar == "Angry") {moodInt = 8}
        
        if (global.moodVar == "Romantic") {moodInt = 10}
        
       //angry+punk combine
        if (moodInt * genreInt == 56) {
           thePlaylist.text = "You should listen to Rage Against The Machine."
        }
        
    }
    
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            picker.delegate = self
            picker.dataSource = self
            // Do any additional setup after loading the view.
        }

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


