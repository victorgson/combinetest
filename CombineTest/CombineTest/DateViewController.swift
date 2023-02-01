//
//  DateViewController.swift
//  CombineTest
//
//  Created by Victor Gustafsson on 2023-02-01.
//

import UIKit
import Combine

class DateViewController: UIViewController {

    
    var dateHelper: DateHelper?
    
    var button: UIButton = {
        var button = UIButton()
        
        button.setTitle("Sätt datum", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        
        return button
        
    }()
  
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(dateHelper: DateHelper) {
        self.init()
        self.dateHelper = dateHelper
        
 
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
            
        
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        button.addTarget(self, action: #selector(handlePress), for: .touchUpInside)
    }
    
    @objc
    func handlePress() {
        
        dateHelper?.date = "Imorgon"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
