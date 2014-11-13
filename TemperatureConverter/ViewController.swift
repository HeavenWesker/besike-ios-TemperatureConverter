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
        KLabel.text = String(format: "%.1fK", arguments:[cTemperature+273.15])
    }


}

