//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Joshua Sharp on 8/22/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetNameLabel: UILabel!
    
    var planet: Planet? {
        didSet{
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let planet = planet else {return}
        planetImageView.image = planet.image
        planetNameLabel.text = planet.name
    }
    
}
