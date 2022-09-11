//
//  ViewController.swift
//  iOS App
//
//  Created by NguyenTC6.GFS on 10/09/2022.
//

import UIKit
import ios_framework

class ViewController: UIViewController {
    var services = CalculatorServices()
    
//    ui from ios-framework
    var dateString: String = ""
    @IBOutlet weak var getDateButton: UIButton!
    @IBOutlet weak var dateLabel: UILabel!
    @IBAction func tappedDateButton(_ sender: Any) {
        print("--------------------tappedDateButton")
        let pickerController = CalendarPickerViewController(
            baseDate: Date(),
          selectedDateChanged: { [weak self] date in
              print("---->>>> todo something: ", date)
              self?.dateLabel.text = "\(date)"
          })
        self.present(pickerController, animated: true, completion: nil)
            }
    
//    logic from ios-framework
    @IBOutlet weak var randonLabel: UILabel!
    
    @IBAction func randonButton(_ sender: Any) {
        let randon = services.randomNumber()
        randonLabel.text = "\(randon)"
        
    }
    
    
    
            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

