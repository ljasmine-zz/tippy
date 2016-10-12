//
//  SettingsViewController.swift
//  tippy
//
//  Created by jasmine_lee on 10/11/16.
//  Copyright © 2016 jasmine_lee. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var lunchTipSlider: UISlider!
    @IBOutlet weak var dinnerTipSlider: UISlider!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var lunchTipLabel: UILabel!
    @IBOutlet weak var dinnerTipLabel: UILabel!
    
    @IBOutlet weak var tipText: UILabel!
    @IBOutlet weak var lunchTipText: UILabel!
    
    @IBOutlet weak var dinnerTipText: UILabel!
    @IBOutlet weak var themeLabel: UILabel!
    
    @IBOutlet weak var darkSwitch: UISwitch!
    
    let step: Float = 0.01
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        let darkOn = defaults.bool(forKey: "darkDefault")
        
        if darkOn {
            darkSwitch.isOn = true
            darkTheme()
        } else {
            darkSwitch.isOn = false
            lightTheme()
        }
        
        let defaultTip = defaults.float(forKey: "tipPercentage")
        let lunchTip = defaults.float(forKey: "lunchTip")
        let dinnerTip = defaults.float(forKey: "dinnerTip")
        tipSlider.setValue(defaultTip, animated: false)
        lunchTipSlider.setValue(lunchTip, animated: false)
        dinnerTipSlider.setValue(dinnerTip, animated: false)
        
        tipLabel.text = String(format:"%.0f", defaultTip * 100) + "%"
        lunchTipLabel.text = String(format:"%.0f", lunchTip * 100) + "%"
        dinnerTipLabel.text = String(format:"%.0f", dinnerTip * 100) + "%"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setTipPercentage(_ sender: AnyObject) {
        
        // save tip percentage to user preferences
        let roundedValue = round(tipSlider.value / step) * step
        tipSlider.value = roundedValue
        let defaults = UserDefaults.standard
        defaults.set(roundedValue, forKey: "tipPercentage")
        
        // update tip percentage in label
        tipLabel.text = String(format:"%.0f", roundedValue * 100) + "%"
    }
    
    @IBAction func setLunchTip(_ sender: AnyObject) {
        
        // save tip percentage to user preferences
        let roundedValue = round(lunchTipSlider.value / step) * step
        lunchTipSlider.value = roundedValue
        let defaults = UserDefaults.standard
        defaults.set(roundedValue, forKey: "lunchTip")
        
        // update tip percentage in label
        lunchTipLabel.text = String(format:"%.0f", roundedValue * 100) + "%"
        
    }
    
    @IBAction func setDinnerTip(_ sender: AnyObject) {
        
        // save tip percentage to user preferences
        let roundedValue = round(dinnerTipSlider.value / step) * step
        let defaults = UserDefaults.standard
        defaults.set(roundedValue, forKey: "dinnerTip")
        
        // update tip percentage in label
        dinnerTipLabel.text = String(format:"%.0f", roundedValue * 100) + "%"
        
    }
    
    func lightTheme() {
        self.view.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        tipLabel.textColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
        lunchTipLabel.textColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
        dinnerTipLabel.textColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
        
        tipText.textColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
        lunchTipText.textColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
        dinnerTipText.textColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
        themeLabel.textColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)

    }
    
    func darkTheme() {
        self.view.backgroundColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
        
        tipLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        lunchTipLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        dinnerTipLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        tipText.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        lunchTipText.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        dinnerTipText.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        themeLabel.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    @IBAction func applyDarkTheme(_ sender: AnyObject) {
        let defaults = UserDefaults.standard
        
        if (darkSwitch.isOn) {
            darkTheme()
            defaults.set(true, forKey: "darkDefault")
        } else {
            lightTheme()
            defaults.set(false, forKey: "darkDefault")
        }
    }

    @IBAction func resetTip(_ sender: AnyObject) {
        UserDefaults.standard.set(0.15, forKey: "tipPercentage")
        
        // update slider and tip percentage in label
        tipSlider.value = 0.15
        tipLabel.text = "15%"
    }
    
    @IBAction func resetLunchTip(_ sender: AnyObject) {
        UserDefaults.standard.set(0.18, forKey: "lunchTip")
        
        // update slider and tip percentage in label
        lunchTipSlider.value = 0.18
        lunchTipLabel.text = "18%"
    }
    
    @IBAction func resetDinnerTip(_ sender: AnyObject) {
        UserDefaults.standard.set(0.20, forKey: "dinnerTip")
        
        // update slider and tip percentage in label
        dinnerTipSlider.value = 0.20
        dinnerTipLabel.text = "20%"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
