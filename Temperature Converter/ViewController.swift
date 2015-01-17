//
//  ViewController.swift
//  Temperature Converter
//
//  Created by shuson on 24/10/14.
//  Copyright (c) 2014 nevermoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    
    @IBAction func temperatureSliderAction(sender: AnyObject) {
        self.updateTemperatureDisplays()
    }
    
    func updateTemperatureDisplays(){
        var currentC = floor(temperatureSlider.value)
        var currentF = Double(currentC)*(9/5)+32
        var currentK = Double(currentC) + 273.15
        
        celsiusLabel.text = String(format: "%.fC", currentC)
        fahrenheitLabel.text = String(format: "%.1fF", currentF)
        kelvinLabel.text = String(format: "%.2fK",currentK )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        //
    }
}

