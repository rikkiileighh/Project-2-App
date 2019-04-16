//
//  ViewController.swift
//  ProjectTwo
//
//  Created by Yanez, Rikki L on 4/8/19.
//  Copyright © 2019 com.rikkiyanez. All rights reserved.
//

import UIKit

class Global {
    var signVar = String()
    var genreVar = String()
    var moodVar = String()
    var playlistVar = String ()
}
 var moodInt = 0
 var genreInt = 0

let global = Global()

class ViewController: UIViewController {


    @IBOutlet weak var mySign: UITextField!
    
    @IBOutlet weak var theSign: UILabel!
    
    @IBOutlet weak var theGenre: UILabel!
    
    @IBOutlet weak var theMood: UILabel!
    
    @IBOutlet weak var thePlaylist: UILabel!
    
    @IBAction func myButton(_ sender: Any) {
        global.signVar = mySign.text!
        theSign.text = "Name: " + global.signVar
        mySign.resignFirstResponder()
        
        
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool){
        theSign.text = "Name: \(global.signVar)"
        theGenre.text = "Genre: \(global.genreVar)"
        theMood.text = "Mood: \(global.moodVar)"
        thePlaylist.text = "Playlist: \(global.playlistVar)"
        
    }
    
    
   
}

