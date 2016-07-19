//
//  TextAnimal.swift
//  TableExercise
//
//  Created by macmini2 on 7/18/16.
//  Copyright © 2016 ivandeltaplan. All rights reserved.
//

import UIKit

class TextAnimal: UITableViewCell {

    @IBOutlet weak var animalName: UILabel!
    
    @IBOutlet weak var animalDescription: UITextView!
    
    
    @IBOutlet weak var animalImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
