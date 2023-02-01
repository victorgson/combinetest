//
//  ColleagueViewController.swift
//  CombineTest
//
//  Created by Victor Gustafsson on 2023-02-01.
//

import Foundation
import UIKit
import Combine


class ColleagueViewController: UIViewController {
    
    var dateHelper: DateHelper?
    
    var cancellables: [AnyCancellable] = []
    
    var label : UILabel = {
        var label = UILabel()
        
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience init(dateHelper: DateHelper) {
        self.init()
        self.dateHelper = dateHelper
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        
        
        dateHelper?.$date.sink(receiveValue: { [weak self] value in
            print(value)
            self!.label.text = value
        }).store(in: &cancellables)
        
        
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
   
        // Do any additional setup after loading the view.
    }
}
