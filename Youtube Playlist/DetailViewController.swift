//
//  DetailViewController.swift
//  Youtube Playlist
//
//  Created by MRisser1 on 4/10/17.
//  Copyright © 2017 MRisser1. All rights reserved.
//

import UIKit
import RealmSwift
import SafariServices

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var urlTextField: UITextField!
    let realm = try! Realm()

    func configureView() {
        // Update the user interface for the detail item.
        if let video = detailItem {
            if titleTextField != nil {
                titleTextField.text = video.title
                urlTextField.text = video.url
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Video? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    @IBAction func onTapSave(_ sender: UIButton) {
        if let video = detailItem {
            try! self.realm.write ({
                video.title = titleTextField.text!
                video.url = urlTextField.text!
            })
        }
    }

    @IBAction func onTapPlayVideo(_ sender: UIButton) {
    }

}

