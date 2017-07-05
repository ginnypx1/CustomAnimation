//
//  ViewController.swift
//  CustomAnimation
//
//  Created by Ginny Pennekamp on 7/1/17.
//  Copyright © 2017 Ginny Pennekamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var pinkView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        positionSquaresOutOfView()
        
        startAnimating()
    }

    // MARK: - Animations
    
    func startAnimating() {
        
        pullSquaresToMiddle()
        squaresToCircles()
        changeBackgroundView()
        fadeOut()
        //fadeIn()
    }
    
    // MARK: - animations
    
    func pullSquaresToMiddle() {
        // bring the views into the center
        UIView.animate(withDuration: 4.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.4, options: [], animations: {
            self.pinkView.center = CGPoint(x: self.view.frame.width/2 - 35, y: self.view.frame.height/2 - 35)
            self.orangeView.center = CGPoint(x: self.view.frame.width/2 + 35, y: self.view.frame.height/2 - 35)
            self.greenView.center = CGPoint(x: self.view.frame.width/2 - 35, y: self.view.frame.height/2 + 35)
            self.blueView.center = CGPoint(x: self.view.frame.width/2 + 35, y: self.view.frame.height/2 + 35)
        }, completion: nil)
        /*
        UIView.animate(withDuration: 4, animations: {
            self.pinkView.center = CGPoint(x: self.view.frame.width/2 - 35, y: self.view.frame.height/2 - 35)
            self.orangeView.center = CGPoint(x: self.view.frame.width/2 + 35, y: self.view.frame.height/2 - 35)
            self.greenView.center = CGPoint(x: self.view.frame.width/2 - 35, y: self.view.frame.height/2 + 35)
            self.blueView.center = CGPoint(x: self.view.frame.width/2 + 35, y: self.view.frame.height/2 + 35)
        })
        */
    }

    func squaresToCircles() {
        UIView.animate(withDuration: 1, delay: 4, animations: {
            self.pinkView.layer.cornerRadius = 25
            self.orangeView.layer.cornerRadius = 25
            self.greenView.layer.cornerRadius = 25
            self.blueView.layer.cornerRadius = 25
        })
    }
    
    func changeBackgroundView() {
        UIView.animate(withDuration: 1, delay: 5, animations: {
            self.view.backgroundColor = UIColor.black
        })
    }
    
    func fadeOut() {
        UIView.animateKeyframes(withDuration: 2.0, delay: 6.0, options: [], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                self.pinkView.alpha = 0
            })
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                self.orangeView.alpha = 0
            })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
                self.greenView.alpha = 0
            })
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                self.blueView.alpha = 0
            })
        })
    }
    
    func fadeIn() {
        UIView.animateKeyframes(withDuration: 2.0, delay: 8.0, options: [], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                self.pinkView.alpha = 1
            })
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                self.orangeView.alpha = 1
            })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
                self.greenView.alpha = 1
            })
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                self.blueView.alpha = 1
            })
        })
    }
    
    // MARK: - Prep Work
    
    func positionSquaresOutOfView() {
        // position the views out of range
        pinkView.center.y = -100
        pinkView.center.x = -100
        orangeView.center.y = -100
        orangeView.center.x = self.view.frame.width + 100
        greenView.center.y = self.view.frame.height + 100
        greenView.center.x = -100
        blueView.center.y = self.view.frame.height + 100
        blueView.center.x = self.view.frame.width + 100
    }

}

