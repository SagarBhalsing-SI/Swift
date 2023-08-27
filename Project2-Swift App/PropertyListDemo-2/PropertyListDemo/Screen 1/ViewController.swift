//
//  ViewController.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - IBOutlets
    @IBOutlet weak var name   : UITextField!
    @IBOutlet weak var email   : UITextField!
    @IBOutlet weak var phone   : UITextField!
    @IBOutlet weak var age    : UITextField!
    @IBOutlet weak var eventDate    : UIDatePicker!
    @IBOutlet weak var food: UISegmentedControl!
    @IBOutlet weak var ambience: UISegmentedControl!
    @IBOutlet weak var service: UISegmentedControl!
    
    
    //MARK: - Variables
    var viewModel                   : ViewControllerVM  = ViewControllerVM()
    
    //MARK: - IBActions
//    @IBAction func saveTapped(_ sender: UIButton) {
//      self.viewModel.decimal  = Double(self.decimalValue.value)
//        self.viewModel.name     = self.name.text!
//        self.viewModel.email     = self.email.text!
//        self.viewModel.phone     = self.phone.text!
//        self.viewModel.age     = self.age.text!
//        self.viewModel.event    = self.eventDate.date
//        self.viewModel.food     = self.food.selectedSegmentIndex
//        self.viewModel.ambience     = self.ambience.selectedSegmentIndex
//        self.viewModel.service     = self.service.selectedSegmentIndex
//
//        self.viewModel.save()
//    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
                self.viewModel.name     = self.name.text!
                self.viewModel.email     = self.email.text!
                self.viewModel.phone     = self.phone.text!
                self.viewModel.age     = self.age.text!
                self.viewModel.event    = self.eventDate.date
                self.viewModel.food     = self.food.selectedSegmentIndex
                self.viewModel.ambience     = self.ambience.selectedSegmentIndex
                self.viewModel.service     = self.service.selectedSegmentIndex
        
                self.viewModel.save()
    }
    
    
    @IBAction func fetchTapped(_ sender: UIButton) {
    }
    
  
    
    
}

