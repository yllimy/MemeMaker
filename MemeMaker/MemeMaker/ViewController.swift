//
//  ViewController.swift
//  MemeMaker
//
//  Created by Yelim Kim on 2021/01/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    @IBOutlet weak var ImageView: UIImageView!
    
    let pictures = Array<[String]>([["whiteDog","yellowDog","blackDog"],
                ["whiteCat","yellowCat","blackCat"]]);
    
    let topControl = Array<String>(["🐶","🐱"]);
    let bottomControl = Array<String>(["🤍","💛","🖤"]);
    var top = 0;
    var bottom = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topCaptionSegmentedControl.removeAllSegments()
        for choice in 0..<2 {
            topCaptionSegmentedControl.insertSegment(withTitle: topControl[choice], at: choice, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0;
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in 0..<3 {
            bottomCaptionSegmentedControl.insertSegment(withTitle: bottomControl[choice], at: choice, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0;
    }

    @IBAction func topCaptionSegmentedAction(_ sender: Any) {
        top = topCaptionSegmentedControl.selectedSegmentIndex;
        topCaptionLabel.text = topControl[top];
        ImageView.image = UIImage(named: pictures[top][bottom]);
    }
    
    @IBAction func bottomCaptionSegmentedAction(_ sender: Any) {
        bottom = bottomCaptionSegmentedControl.selectedSegmentIndex;
        bottomCaptionLabel.text = bottomControl[bottom];
        ImageView.image = UIImage(named: pictures[top][bottom]);
    }
}

