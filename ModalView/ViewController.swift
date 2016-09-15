//
//  ViewController.swift
//  ModalView
//
//  Created by VAndrJ on 9/14/16.
//  Copyright © 2016 VAndrJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let transition = TransitionMailLikeAnimator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: Buttons
extension ViewController {
    
    @IBAction func btnClick(_ sender: AnyObject) {
        let secondViewController = storyboard!.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.transitioningDelegate = self
        secondViewController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        present(secondViewController, animated: true, completion: nil)
    }
}

// MARK: Transition
extension ViewController: UIViewControllerTransitioningDelegate {
    
    func animationController(
        forPresented presented: UIViewController,
        presenting: UIViewController,
        source: UIViewController) ->
        UIViewControllerAnimatedTransitioning? {
            transition.presenting = true
            transition.duration = 0.5
            return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.presenting = false
        return transition
    }
}
