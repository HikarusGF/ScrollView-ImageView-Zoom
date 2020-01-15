//
//  ViewController.swift
//  ScrollViewZoom
//
//  Created by Hikarus Guijarro-Fayard on 1/8/20.
//

import UIKit

class IBViewController: UIViewController, UIScrollViewDelegate {

   @IBOutlet weak var ⓞscrollView: UIScrollView!
   @IBOutlet weak var ⓞimageView: UIImageView!
   
   
   /* 👆🏼⚠️❗️
   The Autolayout constrains are KEY in order to avoid behavior from the part of the ScrollView:
    
   The UIImageView embedded in it must have ONLY BORDER PINNING CONSTRAINTS, NEVER SIZE.
    
    
    
    */
   override func viewDidLoad() {
      super.viewDidLoad()
      ⓞscrollView.contentInsetAdjustmentBehavior = .never // gets rid of the initial nonsensical margin
      ⓞscrollView.minimumZoomScale = 0.2
      ⓞscrollView.maximumZoomScale = 5.0
   }
   
   func viewForZooming(in scrollView: UIScrollView) -> UIView? { return ⓞimageView }
   
}

