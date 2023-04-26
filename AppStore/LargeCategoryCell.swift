//
//  LargeCategoryCell.swift
//  AppStore
//
//  Created by Angela Terao on 26/04/2023.
//

import UIKit

class LargeCategoryCell: CategoryCell {
    
    private let idLargeAppCell = "idLargeAppCell"
    
    override func setupViews(){
        super.setupViews()
        
        appsCollectionView.register(LargeAppCell.self, forCellWithReuseIdentifier: idLargeAppCell)
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSizeMake(200, frame.height - 32)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idLargeAppCell, for: indexPath) as! LargeAppCell
        
        cell.app = appCategory?.apps?[indexPath.item]
        
        return cell
    }
    

}

private class LargeAppCell: AppCell {
    
    override func setupViews() {
        super.setupViews()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(imageView)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", metrics: nil, views: ["v0": imageView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-2-[v0]-14-|", metrics: nil, views: ["v0": imageView]))
        
    }
    
}
