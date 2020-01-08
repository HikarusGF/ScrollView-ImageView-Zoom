//
//  ViewController.swift
//  ScrollViewZoom
//
//  Created by Hikarus Guijarro-Fayard on 1/8/20.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

	@IBOutlet var ⓞscrollView: UIScrollView!
	
	let imageView🅒: UIImageView = {
		let outputIV🅒 = UIImageView()
		outputIV🅒.translatesAutoresizingMaskIntoConstraints = false
      outputIV🅒.image = UIImage(named: "BDSM.jpg")
      outputIV🅒.contentMode = .scaleAspectFill
      return outputIV🅒
   }()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      ⓞscrollView.addSubview(imageView🅒)
      NSLayoutConstraint.activate([
         imageView🅒.topAnchor.constraint(equalTo: ⓞscrollView.contentLayoutGuide.topAnchor, constant: 0.0),
         imageView🅒.bottomAnchor.constraint(equalTo: ⓞscrollView.contentLayoutGuide.bottomAnchor, constant: 0.0),
         imageView🅒.leadingAnchor.constraint(equalTo: ⓞscrollView.contentLayoutGuide.leadingAnchor, constant: 0.0),
         imageView🅒.trailingAnchor.constraint(equalTo: ⓞscrollView.contentLayoutGuide.trailingAnchor, constant: 0.0),
      ])
      ⓞscrollView.minimumZoomScale = 0.2
      ⓞscrollView.maximumZoomScale = 5.0
	}
	
	func viewForZooming(in scrollView: UIScrollView) -> UIView? { return imageView🅒 }
	
}

