//
//  CalculationViewController.swift
//  Slurry Calculation
//
//  Created by BBS Developer on 27/11/2561 BE.
//  Copyright © 2561 Wilaiwan. All rights reserved.
//

import UIKit

class CalculationViewController: UIViewController, UITextFieldDelegate  {

    @IBOutlet weak var textVolume : UITextField!
    @IBOutlet weak var textSG  :UITextField!
    @IBOutlet weak var textMoisture : UITextField!
    @IBOutlet weak var textBe : UILabel!
    @IBOutlet weak var textTotalWeight :  UILabel!
    
    @IBOutlet weak var textDs : UILabel!
    @IBOutlet weak var textName : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textVolume.delegate = self
        textSG.delegate = self
        textMoisture.delegate = self
        
        textMoisture.text! = "12.5"
        textDs.isHidden = true
        textName.isHidden = true
        
        // format date
        let currentDateTime = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyy HH:mm"
        textName.text! = dateFormatter.string(from: currentDateTime)
        let date_time = dateFormatter.string(from: currentDateTime)
        print("Date : \(date_time)")
        
    }
    
    @IBAction func SaveWeight() {
        
        if textName.text != "" && textTotalWeight.text != "" {
            if save_weight.saveObject(name: textName.text!, weight: textTotalWeight.text!) {
                for reportweight in save_weight.fetchObject()! {
                    self.displayMyAlertMeage(userMessage: "บันทึกข้อมูลสำเร็จ!")
                    print("name :\(reportweight.name!) weight : \(reportweight.weight!)" )
                    
                    self.textName.text = nil
                    self.textTotalWeight.text = nil
                    self.textSG.text = nil
                    self.textBe.text = nil
                    self.textVolume.text = nil
                }
            }
        }
    }
    
    @IBAction func CalWeight() {
       self.checkVolum()
        let volume = Double(textVolume.text!)
        
        let dsstarch = Double(textDs.text!)
        let moisture0per = (dsstarch! * volume!)
        let textmoisture = Double(textMoisture.text!)
        let moisture = moisture0per / ((100 - textmoisture!) / 100)
        
        let weight_sum = moisture
        
        textTotalWeight.text! = "\(weight_sum.dollarString)"
    }
    
    func checkVolum() {
        if textVolume.text! == "" {
            let volume = Double(0)
            textVolume.text =  "\(volume)"
            self.displayMyAlertMeage(userMessage: "กรุณากรอกข้อมูลปริมาณน้ำแป้ง")
        } else {
            print("Volume : \(textVolume.text!)")
        }
    }
    @IBAction func refresh() {
        
        let SG = Double(textSG.text!)
        
        if textSG.text! == "" {
            let be_sum = Double(0)
            let ds_sum = Double(0)
            textBe.text = "\(be_sum)"
            textDs.text = "\(ds_sum)"
            self.displayMyAlertMeage(userMessage: "กรุณากรอกข้อมูลให้ครบ")
            print("No NG!")
            
        } else if SG! == 1.0035 {
            let be_sum = Double(0.5 + 0)
            let ds_sum = Double(8.8)
            textBe.text = "\(be_sum)"
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0070 {
            
            let be_sum = Double(1.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(17.6)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0105 {
            
            let be_sum = Double(1.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(26.5)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0141 {
            
            let be_sum = Double(2.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(35.5)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0176 {
            
            let be_sum = Double(2.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(44.5)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0212 {
            
            let be_sum = Double(3.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(53.6)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0249 {
            
            let be_sum = Double(3.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(62.8)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0285 {
            
            let be_sum = Double(4.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(72.0)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0322 {
            
            let be_sum = Double(4.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(81.3)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0359 {
            
            let be_sum = Double(5.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(90.7)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0396 {
            
            let be_sum = Double(5.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(100.1)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0434 {
            
            let be_sum = Double(6.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(109.6)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0472 {
            
            let be_sum = Double(6.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(119.1)
            textDs.text = "\(ds_sum)"
            
            
        } else if SG! == 1.0510 {
            
            let be_sum = Double(7.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(128.8)
            textDs.text = "\(ds_sum)"
            
            
        } else if SG! == 1.0548 {
            
            let be_sum = Double(7.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(138.5)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0587 {
            
            let be_sum = Double(8.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(148.2)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0626 {
            
            let be_sum = Double(8.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(158.1)
            textDs.text = "\(ds_sum)"
            
            
        } else if SG! == 1.0665 {
            
            let be_sum = Double(9.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(168.0)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0705 {
            
            let be_sum = Double(9.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(178.0)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0745 {
            
            let be_sum = Double(10.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(188.1)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0785 {
            
            let be_sum = Double(10.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(198.2)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0825 {
            
            let be_sum = Double(11.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(208.4)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0866 {
            
            let be_sum = Double(11.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(218.7)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0907 {
            
            let be_sum = Double(12.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(229.1)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0948 {
            
            let be_sum = Double(12.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(239.5)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.0990 {
            
            let be_sum = Double(13.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(250.1)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1032 {
            
            let be_sum = Double(13.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(260.7)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1074 {
            
            let be_sum = Double(14.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(271.4)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1117 {
            
            let be_sum = Double(14.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(282.2)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1160 {
            
            let be_sum = Double(15.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(293.0)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1203 {
            
            let be_sum = Double(15.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(304.0)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1247 {
            
            let be_sum = Double(16.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(315.0)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1291 {
            
            let be_sum = Double(16.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(326.1)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1335 {
            
            let be_sum = Double(17.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(337.3)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1380 {
            
            let be_sum = Double(17.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(348.6)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1425 {
            
            let be_sum = Double(18.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(360.0)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1471 {
            
            let be_sum = Double(18.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(371.4)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1516 {
            
            let be_sum = Double(19.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(383.0)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1563 {
            
            let be_sum = Double(19.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(394.7)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1609 {
            
            let be_sum = Double(20 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(406.4)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1656 {
            
            let be_sum = Double(20.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(418.2)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1703 {
            let be_sum = Double(21.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(430.2)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1751 {
            
            let be_sum = Double(21.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(442.2)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1799 {
            
            let be_sum = Double(22.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(454.4)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1847 {
            
            let be_sum = Double(22.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(466.6)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1896 {
            
            let be_sum = Double(23.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(478.9)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1945 {
            
            let be_sum = Double(23.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(491.4)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.1995 {
            
            let be_sum = Double(24.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(503.9)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.2045 {
            
            let be_sum = Double(24.5 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(516.5)
            textDs.text = "\(ds_sum)"
            
        } else if SG! == 1.2096 {
            
            let be_sum = Double(25.0 + 0)
            textBe.text = "\(be_sum)"
            
            let ds_sum = Double(529.3)
            textDs.text = "\(ds_sum)"
            
        } else if SG! > 1.0035 && SG! < 1.0070 {
            
            let a = 1.0035
            let b = 1.0070
            let c = 8.8
            let d = 17.6
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 0.5
            let d1 = 1.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        }else if SG! > 1.0070 && SG! < 1.0105 {
            
            let a = 1.0070
            let b = 1.0105
            let c = 17.6
            let d = 26.5
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 1.0
            let d1 = 1.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0105 && SG! < 1.0141 {
            
            let a = 1.0105
            let b = 1.0141
            let c = 26.5
            let d = 35.5
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 1.5
            let d1 = 2.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        }else if SG! > 1.0141 && SG! < 1.0176 {
            
            let a = 1.0141
            let b = 1.0176
            let c = 35.5
            let d = 44.5
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 2.0
            let d1 = 2.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0176 && SG! < 1.0212 {
            
            let a = 1.0176
            let b = 1.0212
            let c = 44.5
            let d = 53.6
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 2.5
            let d1 = 3.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0212 && SG! < 1.0249 {
            
            let a = 1.0212
            let b = 1.0249
            let c = 53.6
            let d = 62.8
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 3.0
            let d1 = 3.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0249 && SG! < 1.0285 {
            
            let a = 1.0249
            let b = 1.0285
            let c = 62.8
            let d = 72.0
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 3.5
            let d1 = 4.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        }  else if SG! > 1.0285 && SG! < 1.0322 {
            
            let a = 1.0285
            let b = 1.0322
            let c = 72.0
            let d = 81.3
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 4.0
            let d1 = 4.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0322 && SG! < 1.0359 {
            
            let a = 1.0322
            let b = 1.0359
            let c = 81.3
            let d = 90.7
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 4.5
            let d1 = 5.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0359 && SG! < 1.0396  {
            
            let a = 1.0322
            let b = 1.0359
            let c = 90.7
            let d = 100.1
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 5.0
            let d1 = 5.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0396 && SG! < 1.0434 {
            
            let a = 1.0396
            let b = 1.0434
            let c = 100.1
            let d = 109.6
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 5.5
            let d1 = 6.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0434 && SG! < 1.0472 {
            
            let a = 1.0434
            let b = 1.0472
            let c = 109.6
            let d = 119.1
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 6.0
            let d1 = 6.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0472 && SG! < 1.0510 {
            
            let a = 1.0472
            let b = 1.0510
            let c = 119.1
            let d = 128.8
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 6.5
            let d1 = 7.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0510 && SG! < 1.0548 {
            
            let a = 1.0510
            let b = 1.0548
            let c = 128.8
            let d = 138.5
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 7.0
            let d1 = 7.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0548 && SG! < 1.0587 {
            
            let a = 1.0548
            let b = 1.0587
            let c = 138.5
            let d = 148.2
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 7.5
            let d1 = 8.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0587 && SG! < 1.0626 {
            
            let a = 1.0587
            let b = 1.0626
            let c = 148.2
            let d = 158.1
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 8.0
            let d1 = 8.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0626 && SG! < 1.0665 {
            
            let a = 1.0626
            let b = 1.0665
            let c = 158.1
            let d = 168.0
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 8.5
            let d1 = 9.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0665 && SG! < 1.0705 {
            
            let a = 1.0665
            let b = 1.0705
            let c = 168.0
            let d = 178.0
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 9.0
            let d1 = 9.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0705 && SG! < 1.0745 {
            
            let a = 1.0705
            let b = 1.0745
            let c = 178.0
            let d = 188.1
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 9.5
            let d1 = 10.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0745 && SG! < 1.0785 {
            
            let a = 1.0745
            let b = 1.0785
            let c = 188.1
            let d = 198.2
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 10.0
            let d1 = 10.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0785 && SG! < 1.0825 {
            
            let a = 1.0785
            let b = 1.0825
            let c = 198.2
            let d = 208.4
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 10.5
            let d1 = 11.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0825 && SG! < 1.0866 {
            
            let a = 1.0825
            let b = 1.0866
            let c = 208.4
            let d = 218.7
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 11.0
            let d1 = 11.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0866 && SG! < 1.0907 {
            
            let a = 1.0866
            let b = 1.0907
            let c = 218.7
            let d = 229.1
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 11.5
            let d1 = 12.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0907 && SG! < 1.0948 {
            
            let a = 1.0907
            let b = 1.0948
            let c = 229.1
            let d = 293.5
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 12.0
            let d1 = 12.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0948 && SG! < 1.0990 {
            
            let a = 1.0948
            let b = 1.0990
            let c = 239.5
            let d = 250.1
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 12.5
            let d1 = 13.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0948 && SG! < 1.0990 {
            
            let a = 1.0948
            let b = 1.0990
            let c = 239.5
            let d = 250.1
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 12.5
            let d1 = 13.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.0990 && SG! < 1.1032 {
            
            let a = 1.0948
            let b = 1.1032
            let c = 250.1
            let d = 260.7
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 13.0
            let d1 = 13.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1032 && SG! < 1.1074 {
            
            let a = 1.1032
            let b = 1.1074
            let c = 260.7
            let d = 271.4
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 13.5
            let d1 = 14.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1074 && SG! < 1.1117 {
            
            let a = 1.1074
            let b = 1.1117
            let c = 271.4
            let d = 282.2
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 14.0
            let d1 = 14.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1117 && SG! < 1.1160 {
            
            let a = 1.1117
            let b = 1.1160
            let c = 282.2
            let d = 293.0
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 14.5
            let d1 = 15.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1160 && SG! < 1.1203 {
            
            let a = 1.1160
            let b = 1.1203
            let c = 293.0
            let d = 304.0
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 15.0
            let d1 = 15.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1203 && SG! < 1.1247 {
            
            let a = 1.1203
            let b = 1.1247
            let c = 304.0
            let d = 315.0
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 15.5
            let d1 = 16.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1247 && SG! < 1.1291 {
            
            let a = 1.1247
            let b = 1.1291
            let c = 315.0
            let d = 326.1
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 16.0
            let d1 = 16.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1291 && SG! < 1.1335 {
            
            let a = 1.1203
            let b = 1.1247
            let c = 326.1
            let d = 337.3
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 16.5
            let d1 = 17.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1335 && SG! < 1.1380 {
            
            let a = 1.1335
            let b = 1.1247
            let c = 337.3
            let d = 348.6
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 17.0
            let d1 = 17.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1380 && SG! < 1.1425 {
            
            let a = 1.1380
            let b = 1.1425
            let c = 348.6
            let d = 360.0
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 17.5
            let d1 = 18.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1425 && SG! < 1.1471 {
            
            let a = 1.1425
            let b = 1.1471
            let c = 360.0
            let d = 371.4
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 18.0
            let d1 = 18.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1471 && SG! < 1.1516 {
            
            let a = 1.1380
            let b = 1.1425
            let c = 371.4
            let d = 383.0
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 18.5
            let d1 = 19.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1516 && SG! < 1.1563 {
            
            let a = 1.1516
            let b = 1.1563
            let c = 383.0
            let d = 394.7
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 19.0
            let d1 = 19.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1563 && SG! < 1.1609 {
            
            let a = 1.1563
            let b = 1.1609
            let c = 394.7
            let d = 406.4
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 19.5
            let d1 = 20.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1609 && SG! < 1.1656 {
            
            let a = 1.1609
            let b = 1.1609
            let c = 406.4
            let d = 418.2
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 20.0
            let d1 = 20.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1656 && SG! < 1.1703 {
            
            let a = 1.1656
            let b = 1.1703
            let c = 418.2
            let d = 430.2
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 20.5
            let d1 = 21.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1703 && SG! < 1.1751 {
            
            let a = 1.1703
            let b = 1.1751
            let c = 430.2
            let d = 442.2
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 21.0
            let d1 = 21.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1751 && SG! < 1.1799 {
            
            let a = 1.1751
            let b = 1.1799
            let c = 442.2
            let d = 454.4
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 21.5
            let d1 = 22.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1799 && SG! < 1.1847 {
            
            let a = 1.1799
            let b = 1.1799
            let c = 454.4
            let d = 466.6
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 22.0
            let d1 = 22.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1847 && SG! < 1.1896 {
            
            let a = 1.1847
            let b = 1.1896
            let c = 466.6
            let d = 478.9
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 22.5
            let d1 = 23.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1896 && SG! < 1.1945 {
            
            let a = 1.1896
            let b = 1.1945
            let c = 478.9
            let d = 491.4
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 23.0
            let d1 = 23.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1945 && SG! < 1.1995 {
            
            let a = 1.1945
            let b = 1.1995
            let c = 491.4
            let d = 503.9
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 23.5
            let d1 = 24.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.1995 && SG! < 1.2045 {
            
            let a = 1.1995
            let b = 1.2045
            let c = 503.9
            let d = 516.5
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 24.0
            let d1 = 24.5
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else if SG! > 1.2045 && SG! < 1.2096 {
            
            let a = 1.2045
            let b = 1.2096
            let c = 516.5
            let d = 529.3
            
            let ba = (b - a)
            let dc = (d - c)
            let xa = (SG! - a)
            let dcba = (dc / ba)
            let ds = (0.0001 * dcba)
            let ds2 = (ds / 0.0001) * xa
            let weight = (ds2 + c)
            textDs.text = "\(weight)"
            
            let c1 = 24.5
            let d1 = 25.0
            let d1c1 = (d1 - c1)
            let d1c1ba = (d1c1 / ba)
            let be1 = (0.0001 * d1c1ba)
            let be2 = (be1 / 0.0001 ) * xa
            let be = (c1 + be2)
            textBe.text = "\(be.dollarString2)"
            
        } else {
            self.displayMyAlertMeage(userMessage: "กรุณากรอกค่าความถ่วงจำเพาะระหว่าง 1.0035 - 1.2096")
        }
        
    }
    
    //MARK : Hide the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Hide the keyboard when the return key pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //MARK: Function Alert
    func displayMyAlertMeage(userMessage:String)
    {
        let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle:UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title:"OK",style:UIAlertAction.Style.default, handler:nil)
        
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion: nil)
    }
    
}

extension Double {
    var dollarString2:String {
        return String(format: "%.4f", self)
    }
    
    var dollarString:String {
        return String(format: "%.2f", self)
    }
}

