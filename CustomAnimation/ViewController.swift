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
    
    // MARK: - View
    
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
            // chains to fadeIn()
            // chains to moveCirclesToRight()
            // chains to moveCirclesToLeft()
            // chains to oneBigDot()
    }
    
    // MARK: - animations
    
    func pullSquaresToMiddle() {
        // bring the views into the center
        /*
        UIView.animate(withDuration: 4.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.4, options: .curveLinear, animations: {
            self.pinkView.center = CGPoint(x: self.view.frame.width/2 - 35, y: self.view.frame.height/2 - 35)
            self.orangeView.center = CGPoint(x: self.view.frame.width/2 + 35, y: self.view.frame.height/2 - 35)
            self.greenView.center = CGPoint(x: self.view.frame.width/2 - 35, y: self.view.frame.height/2 + 35)
            self.blueView.center = CGPoint(x: self.view.frame.width/2 + 35, y: self.view.frame.height/2 + 35)
        }, completion: nil)
        */
        UIView.animate(withDuration: 4, animations: {
            self.pinkView.center = CGPoint(x: self.view.frame.width/2 - 35, y: self.view.frame.height/2 - 35)
            self.orangeView.center = CGPoint(x: self.view.frame.width/2 + 35, y: self.view.frame.height/2 - 35)
            self.greenView.center = CGPoint(x: self.view.frame.width/2 - 35, y: self.view.frame.height/2 + 35)
            self.blueView.center = CGPoint(x: self.view.frame.width/2 + 35, y: self.view.frame.height/2 + 35)
        })
        
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
        }, completion: { finished in
            self.fadeIn()
        })
    }
    
    func fadeIn() {
        UIView.animateKeyframes(withDuration: 2.0, delay: 0.0, options: [], animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                self.blueView.alpha = 1
            })
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                self.greenView.alpha = 1
            })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
                self.orangeView.alpha = 1
            })
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                self.pinkView.alpha = 1
            })
        }, completion: { finished in
            self.moveCirclesToRight()
        })
    }
    
    func moveCirclesToRight() {
        // bring the views into the center
        UIView.animate(withDuration: 4.0, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.4, options: [], animations: {
            self.pinkView.center.y -= (self.view.frame.height/6)*2
            self.pinkView.center.x -= 100
            self.orangeView.center.y -= (self.view.frame.height/6)*0.5
            self.orangeView.center.x -= 170
            self.greenView.center.y += (self.view.frame.height/6)*0.5
            self.greenView.center.x -= 100
            self.blueView.center.y += (self.view.frame.height/6)*2
            self.blueView.center.x -= 170
        }, completion: { finished in
            self.moveCirclesToLeft()
        })
    }
    
    func moveCirclesToLeft() {
        UIView.animate(withDuration: 4, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: .curveLinear, animations: {
            self.pinkView.center.x += 250
        })
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.orangeView.center.x += 250
        })
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.greenView.center.x += 250
        })
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {
            self.blueView.center.x += 250
        }, completion: { finished in
            self.oneBigDot()
        })
    }
    
    func oneBigDot() {
        // hide the other dots
        orangeView.isHidden = true
        greenView.isHidden = true
        blueView.isHidden = true
        
        UIView.animate(withDuration: 2, animations: {
            self.pinkView.center.x -= 105
            self.pinkView.center.y += 200
            self.pinkView.transform = CGAffineTransform(scaleX: 2, y: 2)
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

