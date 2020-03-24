//
//  ViewController.swift
//  photoMultipleFilters
//
//  Created by Ezra Barber on 3/4/20.
//  Copyright © 2020 Ezra Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var photoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.dismiss(animated: true, completion: nil)
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imageView.image = image
    }
    
    @IBAction func launchPhotoPicker(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            self.present(imagePicker, animated: true, completion: nil)
        }
        else {
            
        }
    }
    
    func applyFilter(param: String) {
        self.dismiss(animated: true, completion: nil)
        let image = imageView.image
        let inputImage = image
        let context = CIContext(options: nil)
        if param == "sepiaFilter" {
        if let filter = CIFilter(name: "CISepiaTone") {
            let beginImage = CIImage(image: inputImage!)
            filter.setDefaults()
            filter.setValue(beginImage, forKey: kCIInputImageKey)
            
            if let output = filter.outputImage {
                if let cgimg = context.createCGImage(output, from: output.extent) {
                    let processedImage = UIImage(cgImage: cgimg)
                    imageView.image = processedImage
                }
            }
        }
    }
        if param == "chromeFilter" {
            if let filter = CIFilter(name: "CIPhotoEffectChrome") {
                let beginImage = CIImage(image: inputImage!)
                filter.setDefaults()
                filter.setValue(beginImage, forKey: kCIInputImageKey)
                
                if let output = filter.outputImage {
                    if let cgimg = context.createCGImage(output, from: output.extent) {
                        let processedImage = UIImage(cgImage: cgimg)
                        imageView.image = processedImage
                    }
                }
            }
        }
        if param == "vignetteFilter" {
               if let filter = CIFilter(name: "CIVignette") {
                   let beginImage = CIImage(image: inputImage!)
                   filter.setDefaults()
                   filter.setValue(beginImage, forKey: kCIInputImageKey)
                   
                   if let output = filter.outputImage {
                       if let cgimg = context.createCGImage(output, from: output.extent) {
                           let processedImage = UIImage(cgImage: cgimg)
                           imageView.image = processedImage
                       }
                   }
               }
           }
}
    
    func Sepia(_ sender: Any) -> String {
        let param = "sepiaFilter"
        return param
    }
    
    func Grayscale(_ sender: Any) -> String {
        let param = "chromeFilter"
        return param
    }
    func Vignette(_ sender: Any) -> String {
        let param = "vignetteFilter"
        return param
    }
    
}
