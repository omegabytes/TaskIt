//
//  AddTaskViewController.swift
//  TaskIt
//
//  Created by Alex Gaesser on 1/17/15.
//  Copyright (c) 2015 AlexGaesser. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    var mainVC: ViewController!
    
    @IBOutlet weak var addTaskTextField: UITextField!
    @IBOutlet weak var addSubtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonTapped(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func addTaskButtonTapped(sender: UIButton) {
        var task = TaskModel(task: addTaskTextField.text, subtask: addSubtaskTextField.text, date: dueDatePicker.date)
        mainVC.taskArray.append(task)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
