//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Mario Ban on 24.04.16.
//  Copyright © 2016 Mario Ban. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    // MARK: Properties

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var ratingControl: RatingControl!
    @IBOutlet var questionButton: UIButton!
    
    @IBAction func questionButtonClicked(_ sender: Any) {
        presentQuestionAlert()
    }
    
    func presentQuestionAlert() {
        let alert = UIAlertController(
            title: "질문",
            message: "고객센터에 문의해 주세요",
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        viewController()?.present(alert, animated: true, completion: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}



extension UIView {
    func viewController() -> UIViewController? {
        if let nextResponder = self.next as? UIViewController {
            return nextResponder
        } else if let nextResponder = self.next as? UIView {
            return nextResponder.viewController()
        } else {
            return nil
        }
    }
}
