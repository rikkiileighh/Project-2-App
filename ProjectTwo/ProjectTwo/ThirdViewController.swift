//
//  ThirdViewController.swift
//  ProjectTwo
//
//  Created by Yanez, Rikki L on 4/8/19.
//  Copyright © 2019 com.rikkiyanez. All rights reserved.
//

import UIKit


class ThirdViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var selection = String()
    
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
        
       //angry x punk combine
        if (moodInt * genreInt == 40) {
           thePlaylist.text = "You should listen to Rage Against The Machine's album Renegades."
        }
        else if (moodInt * genreInt == 24) {
            thePlaylist.text = "You should listen to Lana Del Rey."
        }
            
        else if (moodInt * genreInt == 56) {
            thePlaylist.text = "You should listen to James Taylor."
        }
        else if (moodInt * genreInt == 72) {
            thePlaylist.text = "You should listen to Blink 182."
        }
        
        else if (moodInt * genreInt == 56) {
            thePlaylist.text = "You should listen to Josh Turner."
        }
        
        //happy x pop
        if (moodInt * genreInt == 18 ) {
            thePlaylist.text = "You should listen to Ariana Grande's album Sweetner."
        }
            
        else if (moodInt * genreInt == 30) {
                thePlaylist.text = "You should listen to The Maine."
            }
        else if (moodInt * genreInt == 42) {
            thePlaylist.text = "You should listen to Ella Fitzgerald."
        }
        else if (moodInt * genreInt == 54) {
            thePlaylist.text = "You should listen to Homeshake."
        }
        
        else if (moodInt * genreInt == 42) {
            thePlaylist.text = "You should listen to Kacey Musgraves."
        }
        
        //sad x blues
        if (moodInt * genreInt == 14) {
            thePlaylist.text = "You should listen to Otis Redding's album Pain In My Heart."
        }
        else if (moodInt * genreInt == 10) {
            thePlaylist.text = "You should listen to The Smiths."
        }
        
        else if (moodInt * genreInt == 6) {
            thePlaylist.text = "You should listen to Melanie Martinez."
        }
        
        else if (moodInt * genreInt == 18) {
            thePlaylist.text = "You should listen to King Krule."
        }
        
        else if (moodInt * genreInt == 14) {
            thePlaylist.text = "You should listen to Lady Antebellum."
        }
        
        // calm x indie
        if (moodInt * genreInt == 36) {
            thePlaylist.text = "You should listen to SALES's album Forever & Ever."
        }
        else if (moodInt * genreInt == 20) {
            thePlaylist.text = "You should listen to The Goo Goo Dolls."
        }
        
        else if (moodInt * genreInt == 12) {
            thePlaylist.text = "You should listen to Marina and The Diamonds."
        }
        else if (moodInt * genreInt == 28) {
            thePlaylist.text = "You should listen to Bon Iver."
        }
        else if (moodInt * genreInt == 28) {
            thePlaylist.text = "You should listen to Patsy Cline."
        }
        
        // romantic x country
        if (moodInt * genreInt == 70) {
            thePlaylist.text = "You should listen to George Straight's album Straight From The Heart."
        }
        
        else if (moodInt * genreInt == 50) {
            thePlaylist.text = "You should listen to Kings of Leon."
        }
        
        else if (moodInt * genreInt == 30) {
            thePlaylist.text = "You should listen to Rihanna."
        }
        
        else if (moodInt * genreInt == 90) {
            thePlaylist.text = "You should listen to Conar Gray."
        }
        
        else if (moodInt * genreInt == 70) {
            thePlaylist.text = "You should listen to Al Green."
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


