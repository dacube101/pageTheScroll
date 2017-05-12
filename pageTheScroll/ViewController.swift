//
//  ViewController.swift
//  pageTheScroll
//
//  Created by rafael rivera on 4/17/17.
//  Copyright © 2017 rafael rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()

    var contentWidth: CGFloat = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
                    
            var newx: CGFloat = 0.0
                    
            newx = view.frame.midX + view.frame.width * CGFloat(x)
            
            scrollView.addSubview(imageView)
            
        contentWidth += newx
            
            imageView.frame = CGRect(x: newx - 75, y: (view.frame.height / 2) - 75, width: 150, height: 150)
        }

        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
    }


}

