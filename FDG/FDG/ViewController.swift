//
//  ViewController.swift
//  FDG
//
//  Created by Shane Grim on 4/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        //addNavBarImage()
        //navigationItem.titleView = UIImageView(image: UIImage(named: "FDG_Logo_Rough_Head"))
        
        self.navigationItem.titleView = navTitleWithImageAndText(titleText: "Fantasy Disc Golf", imageName: "FDG_Logo_Rough_Head")
        
        view.backgroundColor = .systemGray2
        
        //Button that leads to screen 2
//        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
//        view.addSubview(button)
//        button.center = view.center
//        button.backgroundColor = .systemBlue
//        button.setTitle("Go to view 2", for: .normal)
//        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

        navigationController?.navigationBar.tintColor = .label
        
        navigationController?.additionalSafeAreaInsets.top = 20
        
        configureItems()
    }
    
    private func configureItems() {
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(
                    image: UIImage(systemName: "questionmark.circle"),
                    style: .done,
                    target: self,
                    action: nil
            ),
            UIBarButtonItem(
                image: UIImage(systemName: "person.circle"),
                style: .done,
                target: self,
                action: nil
            )
        ]
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal"),style: .done, target: self, action: nil)
        
        
        //Custom View
        
        //        let customView = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        //        customView.text = "Hello"
        //        customView.textAlignment = .center
        //        customView.backgroundColor = .orange
        //        customView.layer.cornerRadius = 8
        //        customView.layer.masksToBounds = true
        //
        //        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: customView)
    }
    
    
    
    // Adds logo to title Nav bar but cant get it centered
    
//        func addNavBarImage() {
//                let navController = navigationController!
//                let image = UIImage(named: "FDG_Logo_Rough_Head") //Your logo url here
//                let imageView = UIImageView(image: image)
//                let bannerWidth = navController.navigationBar.frame.size.width
//                let bannerHeight = navController.navigationBar.frame.size.height
//                let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
//                let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
//                imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
//                imageView.contentMode = .scaleAspectFit
//                navigationItem.titleView = imageView
//
//            }
    
    
    func navTitleWithImageAndText(titleText: String, imageName: String) -> UIView {

        // Creates a new UIView
        let titleView = UIView()

        // Creates a new text label
        let label = UILabel()
        label.text = titleText
        label.sizeToFit()
        label.center = titleView.center
        label.textAlignment = NSTextAlignment.center

        // Creates the image view
        let image = UIImageView()
        image.image = UIImage(named: "FDG_Logo_Rough_Head")

        // Maintains the image's aspect ratio:
        let imageAspect = image.image!.size.width / image.image!.size.height

        // Sets the image frame so that it's immediately before the text:
        let imageX = label.frame.origin.x - label.frame.size.height * imageAspect
        let imageY = label.frame.origin.y

        let imageWidth = label.frame.size.height * imageAspect
        let imageHeight = label.frame.size.height

        image.frame = CGRect(x: imageX, y: imageY, width: imageWidth, height: imageHeight)

        image.contentMode = UIView.ContentMode.scaleAspectFit

        // Adds both the label and image view to the titleView
        titleView.addSubview(label)
        titleView.addSubview(image)

        // Sets the titleView frame to fit within the UINavigation Title
        titleView.sizeToFit()
        return titleView

    }
    
    //Objc for the button to go to view 2
    
//    @objc func didTapButton() {
//        let vc = UIViewController()
//        vc.title = "View 2"
//        vc.view.backgroundColor = .systemPink
//
//        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out",
//                                                               style: .done,
//                                                               target: self,
//                                                               action: nil)
//
//        navigationController?.pushViewController(vc, animated: true)
//    }
}

