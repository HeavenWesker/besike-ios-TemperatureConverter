//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Heaven on 11/13/14.
//  Copyright (c) 2014 HeavenWesker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CLabel: UILabel!
    @IBOutlet weak var FLabel: UILabel!
    @IBOutlet weak var KLabel: UILabel!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var tempSlider: UISlider!
    @IBAction func temperatureSliderChanged(sender: UISlider) {
        self.updateTemperatureDisplays()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTemperatureDisplays(){
        var cTemperature = tempSlider.value
        CLabel.text = String(format: "%.1fC", arguments:[cTemperature])
        FLabel.text = String(format: "%.1fF", arguments:[cTemperature*9/5+32])
        KLabel.text = String(format: "%.2fK", arguments:[cTemperature+273.15])
    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//        //Always return the size of the screen in portraits orientation
//        println("Screen fix bounds \(screen.fixedCoordinateSpace.bounds)")
//        //Since ios8, this is the size of the screen in its current orientation
//        println("Screen bounds \(screen.bounds)")
//        println("Top layout guide: \(topLayoutGuide.length)")
//        //println(toString(TitleLabel.frame.width))
//        //TitleLabel.frame.width = screen.bounds.width-16
//        //TitleLabel.frame.width = 100
//        TitleLabel.frame = CGRect(x: 16.0, y: topLayoutGuide.length+16.0,
//            width: screen.bounds.width-32, height: 21)
//    }
}

