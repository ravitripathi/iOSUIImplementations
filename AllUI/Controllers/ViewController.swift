//
//  ViewController.swift
//  AllUI
//
//  Created by Ravi Tripathi on 20/02/18.
//  Copyright © 2018 Ravi Tripathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    let uipickerdata = ["Hello", "World", "bye", "ok", "test", "more", "Data", "ahoy", "perestroika"]
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var segmentLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var loadingIndicatior: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var pickerLabel: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    //MARK: - Stepper
    @IBAction func stepperUpdate(_ sender: UIStepper) {
        stepperLabel.text = Int(sender.value).description
    }
    
    
    //MARK: - Slider
    @IBAction func UISliderChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        sliderLabel.text = "\(currentValue)"
        let currentProgress : Float = Float(currentValue)/Float(100)
        progressView.setProgress(currentProgress, animated: true)
    }
    
    
   
    //MARK: - Switch
    @IBAction func switchControl(_ sender: UISwitch) {
        if sender.isOn{
                switchLabel.text = "On"
                loadingIndicatior.startAnimating()
        }else{
            switchLabel.text="Off"
            loadingIndicatior.stopAnimating()
            loadingIndicatior.hidesWhenStopped = true
        }
    }
    
    
    
    //MARK: - Segment
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            segmentLabel.text = "first"
            break
        case 1:
            segmentLabel.text = "second"
        default:
            break
        }
    }
    
    //MARK: - PickerView delegate methods
    
    // The number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return uipickerdata.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return uipickerdata[row]
    }
    
    //The selected item to be reflected in the label
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerLabel.text = uipickerdata[row]
    }
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentLabel.text = "first"
        switchLabel.text = "On"
        loadingIndicatior.startAnimating()
        progressView.setProgress(0.0, animated: true)
        self.picker.dataSource = self
        self.picker.delegate = self
    }
    
}

