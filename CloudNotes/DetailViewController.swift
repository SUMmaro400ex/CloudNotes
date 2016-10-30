//
//  DetailViewController.swift
//  CloudNotes
//
//  Created by Jonathan Rose on 10/27/16.
//  Copyright © 2016 Jonathan Rose. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var descTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!

    @IBAction func okDescBtnClick(_ sender: AnyObject) {
        okDescBtnClickHandler()
    }
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        detailDescriptionLabel.isUserInteractionEnabled = true
        let aSelector : Selector = #selector(DetailViewController.lblTapped)
        let tapGesture = UITapGestureRecognizer(target: self, action: aSelector)
        detailDescriptionLabel.addGestureRecognizer(tapGesture)
        
    }
    
    func okDescBtnClickHandler(){
        
    }
    
    func lblTapped(){
        detailDescriptionLabel.isHidden = true
//        textF.hidden = false
//        textF.text = lbl.text
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Note? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

