//
//  DetailsViewController.swift
//  PropertyListDemo
//
//  Created by Instructor on 17/08/23.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.name.text = self.viewModel.name
        self.email.text = self.viewModel.email
        self.phone.text = self.viewModel.phone
        self.age.text = self.viewModel.age
        self.eventDate.text = self.viewModel.eventDate.description
        self.food.text = self.viewModel.food.description
        self.ambience.text = self.viewModel.ambience.description
        self.service.text = self.viewModel.service.description
    }
    
    //MARK: - Variables
    var viewModel               : DetailsViewControllerVM = DetailsViewControllerVM()
    
    //MARK: - IBOutlets

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var food: UILabel!
    @IBOutlet weak var ambience: UILabel!
    @IBOutlet weak var service: UILabel!
    @IBOutlet weak var eventDate: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
