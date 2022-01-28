//
//  AddingViewController.swift
//  swift_lab22
//
//  Created by Mohamed Toba on 1/9/22.
//  Copyright © 2022 Mohamed Toba. All rights reserved.
//

import UIKit

class AddingViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var warningText: UILabel!
    
    @IBOutlet weak var addImage: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ratingTextField: UITextField!
    @IBOutlet weak var generTextField: UITextField!
    @IBOutlet weak var yeatTextField: UITextField!
    var movie :Movie?
    var firstview: RefreshMoviesProtocol?
    var imagePicker: UIImagePickerController?
    override func viewDidLoad() {
        super.viewDidLoad()
        movie = Movie()

        imagePicker = UIImagePickerController()
        imagePicker?.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addImageFromGalleryAction(_ sender: UIButton) {
           if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
               imagePicker?.sourceType = .photoLibrary
               imagePicker?.allowsEditing = true
               if let picker = imagePicker{
               self.present(picker, animated: true, completion: nil)
               }
           }else{
               print("gallery not available")
           }
       
       }
    
    @IBAction func doneFunc(_ sender: UIButton) {
        
        if nameTextField.text == "" || ratingTextField.text == "" || yeatTextField.text == "" || generTextField.text == "" {
               
                  warningText.text = "Please enter the full data"
              }else{
        movie!.title = nameTextField.text ?? "empty title"
        movie!.rating = Float(ratingTextField.text ?? "") ?? 1
        movie!.releaseYear = Int(yeatTextField.text ?? "") ?? 1900
            movie!.genre += " , \(generTextField.text ?? "")"
        DBHelper.instance.insertMovie(movie: movie!)
        print(movie!.id!)
        firstview?.movieList.append(movie!)
        firstview?.refreshMovies()
        self.navigationController?.popViewController(animated: true)
        }
      
    }
    
    @IBAction func buttonAddToList(_ sender: UIButton) {

        if movie?.genre == "" {
            movie!.genre += "\(generTextField.text ?? "")"

        }else{
            movie!.genre += " , \(generTextField.text ?? "") "
        }
        
      generTextField.text = ""
        
    }
    

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
           if let imgUrl = info[UIImagePickerController.InfoKey.imageURL] as? URL{
               let imgName = imgUrl.lastPathComponent
               let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
               let localPath = documentDirectory?.appending(imgName)
               
               let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
               addImage.image = image
               let data = image.pngData()! as NSData
               data.write(toFile: localPath!, atomically: true)
               let photoURL = URL.init(fileURLWithPath: localPath!)
               print(photoURL)
               movie?.image = photoURL.absoluteString
            warningText.text = "Image successfully Loaded"
               self.dismiss(animated: true, completion: nil)
               
           }
       }

}
