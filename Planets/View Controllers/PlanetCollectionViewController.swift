//
//  PlanetCollectionViewController.swift
//  Planets
//
//  Created by Joshua Sharp on 8/22/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewController: UICollectionViewController {

    let planetController = PlanetController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView?.reloadData()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else {return UICollectionViewCell()}
    
        let planet = planetController.planets[indexPath.item]
        cell.planet = planet
        return cell
    }
    
    // MARK: - Actions
    
    @IBAction func unwindToPlanetCollectionViewController (_ sender: UIStoryboardSegue) {
    }
}
