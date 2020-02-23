//
//  ViewHelper.swift
//  IceBreaker
//
//  Created by Luis Hernandez on 22/02/2020.
//  Copyright © 2020 Luis Hernandez. All rights reserved.
//

import Foundation
import UIKit

class ViewHelper {
    
    class func setCollectionViewLayout(collectionView: UICollectionView?, margin: CGFloat) {
        
        guard let flowLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout else { return }
        
        flowLayout.minimumInteritemSpacing = margin
        flowLayout.minimumLineSpacing = margin
        flowLayout.sectionInset = UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
        flowLayout.estimatedItemSize = flowLayout.itemSize
    }
    
}
