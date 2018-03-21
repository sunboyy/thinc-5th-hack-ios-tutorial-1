//
//  ProfileViewController.swift
//  thinc-5th-hack-ios-tutorial-1
//
//  Created by Admin on 20/3/2561 BE.
//  Copyright © 2561 mrsunboy. All rights reserved.
//

import UIKit
import LocalAuthentication
class ProfileViewController: UIViewController {
    var data:String!
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true) {
        }
    }
    
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var birthText: UILabel!
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var bloodTypeText: UILabel!
    
    @IBAction func callBtn(_ sender: Any) {
        touchId() //pls impletment inside the method to perform secretView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //to be implement the weak var labeltext //assign value from loadJson()
        
    }
    
    func loadJson(name: String)->Person?{
        if let path = Bundle.main.path(forResource: "profile", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let list = try! JSONDecoder().decode(ResponseData.self, from: data)
                print(list)
                return nil //to be implement & fix
            } catch {
                // handle error
            }
        }
     return nil
    }
    
    func touchId(){
        let context = LAContext()
        var error: NSError?
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Authenticate with Touch ID"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason, reply:
                {(succes, error) in
                    if succes {
                       //performsegue & create segue link by yourself
                        print("call")
                    }else {
                        self.showAlertController("Touch ID Authentication Failed")
                    }
            } )
        }
        else {
            showAlertController("Touch ID not available")
        }

    }
    
    
    struct ResponseData: Decodable {
        var personNames: [String]
        var personDetails: [Person]
        private struct CodingKeys: CodingKey {
            var intValue: Int?
            var stringValue: String
            init?(intValue: Int) { self.intValue = intValue; self.stringValue = "" }
            init?(stringValue: String) { self.stringValue = stringValue }
        }
        
        init(from decoder: Decoder) throws {
            self.personNames = [String]()
            self.personDetails = [Person]()
            let container = try decoder.container(keyedBy: CodingKeys.self)
            for key in container.allKeys {
                self.personNames.append(key.stringValue)
                try self.personDetails.append(container.decode(Person.self, forKey: key))
            }
        }
    }
    
    struct Person : Decodable {
        var name: String
        var birth: String
        var height: String
        var blood: String
    }
    
    
    func showAlertController(_ message: String) {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

