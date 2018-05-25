//
//  ViewController.swift
//  RecipeMaster
//
//  Created by HECTOR TRAN on 16/5/18.
//  Copyright © 2018 RecipeMaster. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var tableView: UITableView!
//    let elements = ["Asian", "European", "Latin", "MidEastern"]
    
    @IBAction func likeOnOff(_ sender: UIButton) {
        if sender.tag  == 0 {
            sender.setImage(UIImage(named: "Like"), for: .normal)
            sender.tag = 1
        }
        else {
            sender.setImage(UIImage(named: "Unlike"), for: .normal)
            sender.tag = 0
        }
    }
    
    @IBOutlet weak var popupView: UIView!
    
    @IBOutlet weak var ratingStackView: RatingController!
    
    @IBAction func Rating(_ sender: Any){
        print(ratingStackView.starRating)
    }
    
    @IBAction func closePopup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func FacebookButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.facebook.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func InstagramButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.instagram.com/?hl=en")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func TwitterButton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://twitter.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func Youtube(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.youtube.com/channel/UCH8NnRkxQg1zX7mHFRPq73g")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func ReviewAction(_ sender: UIButton) {
        SKStoreReviewController.requestReview()
    }
    
    override func viewDidLoad() {
//        tableView.delegate = self
//        tableView.dataSource = self
        super.viewDidLoad()
    
    }
//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        return elements.count
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
//
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomTableViewCell
//        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
//        cell.foodLabel.text = elements[indexPath.row]
//        cell.foodImage.image = UIImage(named: elements[indexPath.row])
//        cell.foodImage.layer.cornerRadius = cell.foodImage.frame.height / 2
//
//        return cell
//    }
//
//    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "\(elements[indexPath.row])Segue", sender: self)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

