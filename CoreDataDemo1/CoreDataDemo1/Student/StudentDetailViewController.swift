//
//  StudentDetailViewController.swift
//  CoreDataDemo1
//
//  Created by STUDENT on 4/25/24.
//

import UIKit
import CoreData

class StudentDetailViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var studentdetail: UILabel!
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var rollno: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var adddetail: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func adddetailPressedBotton(_ sender: Any) {
        if name.text != "" && address.text != ""{
            
            let appDel: AppDelegate = UIApplication.shared.delegate as! AppDelegate
            let context1 = appDel.persistentContainer.viewContext
            let student = NSEntityDescription.entity(forEntityName: "Student", in: context1)
            let studentobj =   NSManagedObject(entity: student!, insertInto: context1) as! Student
            
            studentobj.name = name.text!
            studentobj.rollno = rollno.text!
            studentobj.address = address.text!

            var _ : NSError? = nil
            do{
                try context1.save()
                
                let otherAlert = UIAlertController(title: "Suceess", message: "Student is saved success fully", preferredStyle: .actionSheet)

                let printSomething = UIAlertAction(title: "Ok", style: .default) { _ in
                    print("We can run a block of code." )
                    
                    self.navigationController?.popViewController(animated: true)
                    
                }
                    // relate actions to controllers
                    otherAlert.addAction(printSomething)
                
                present(otherAlert, animated: true, completion: nil)
                
                
            }catch{
                print("error while save data")
                
            }
            
            
        }else{
            let otherAlert = UIAlertController(title: "Multiple Actions", message: "The alert has more than one action which means more than one button.", preferredStyle: .actionSheet)

            let printSomething = UIAlertAction(title: "Alert", style: .default) { _ in
                print("We can run a block of code." )
            }
                // relate actions to controllers
                otherAlert.addAction(printSomething)
            
            present(otherAlert, animated: true, completion: nil)
            
        }
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        
        return true
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == ""{
            return true
        }
        return true
    }
    
    }
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


