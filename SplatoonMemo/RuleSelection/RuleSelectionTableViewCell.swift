//
//  RuleSelectionTableViewCell.swift
//  SplatoonMemo
//
//  Created by 大西玲音 on 2022/04/09.
//

import UIKit

class RuleSelectionTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(model: SplaRule) {
        nameLabel.text = model.name
        myImageView.image = UIImage(named: model.imageName)
    }
    
}
