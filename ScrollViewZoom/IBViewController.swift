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
    The Autolayout constrains are KEY in order to avoid and erratic behavior from the part of the ScrollView:
    
    We can  add a ScrollView on storyboard with they typical constraints to center vertical and horizontally to its superView, and equal width and height to the same, so the scrollView is seen in full screen.

    So far so good, now comes the tricky part: Adding an ImageView, on storyboard as well, as a subView of the Scroll View. Here, the constraints we need are the FOUR THAT PIN THE IMAGEVIEW INSIDE THE SCROLLVIEW, but NEVER SIZE CONSTRAINTS. Should we use on the ImageView the same center/equal-size constraints used on the ScrollView, then when it comes to panning, and especially rotating the screen, the ScrollView will show an utterly erratical and nonsensical behavior.

    We will still get the absurd storyboard warning/error telling us that our scrollView has “ambiguous content size”, and the “Update Frames” button will also have an erratic behavior, but we can ignore all that completely, and manually adjust the size of the ScrollView and the ImageView inside it, to look exactly as it will on runtime. NO EXTRA REDUNDANT CONSTRAINTS ARE NEEDED at all, especially nothing that touches the size of the ImageView.
    
    */

   override func viewDidLoad() {
      super.viewDidLoad()
      ⓞscrollView.contentInsetAdjustmentBehavior = .never // gets rid of the initial nonsensical margin
      ⓞscrollView.minimumZoomScale = 0.2
      ⓞscrollView.maximumZoomScale = 5.0
   }
   
   func viewForZooming(in scrollView: UIScrollView) -> UIView? { return ⓞimageView }
   
}

