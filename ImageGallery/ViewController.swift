//
//  ViewController.swift
//  ImageGallery
//
//  Created by Vikram Kunwar on 30/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var galleryImage : UIImageView!
    
    @IBOutlet weak var galleryBtn : UIButton!
    
    @IBOutlet weak var imageView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        galleryImage.layer.cornerRadius = 15
        
        imageView.layer.cornerRadius = 15
        galleryBtn.layer.cornerRadius = 15
    }
    
    @IBAction func galleryOpenBtn(_ sender: UIButton){
        
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.sourceType = .photoLibrary
            present(imagePickerController, animated: true, completion: nil)
        
        
    }


}
extension ViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                // Set the selected image to the UIImageView
                galleryImage.image = selectedImage
            }
            
            picker.dismiss(animated: true, completion: nil)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
}

