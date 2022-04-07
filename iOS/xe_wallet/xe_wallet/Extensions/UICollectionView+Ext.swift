//
//  UICollectionView+Ext.swift
//  xe_wallet
//
//  Created by Paul Davis on 10/12/2021.
//

import UIKit

extension UICollectionView {
    
    func scrollToNearestVisibleCollectionViewCell() {
        
        let visibleCenterPositionOfScrollView = Float(self.contentOffset.x + (self.bounds.size.width / 2))
        var closestCellIndex = -1
        var closestDistance: Float = .greatestFiniteMagnitude
        
        for i in 0..<self.visibleCells.count {
            
            let cell = self.visibleCells[i]
            let cellWidth = cell.bounds.size.width
            let cellCenter = Float(cell.frame.origin.x + cellWidth / 2)

            // Now calculate closest cell
            let distance: Float = fabsf(visibleCenterPositionOfScrollView - cellCenter)
            if distance < closestDistance {
                closestDistance = distance
                closestCellIndex = self.indexPath(for: cell)!.row
            }
        }
        
        if closestCellIndex != -1 {
            
            self.scrollToItem(at: IndexPath(row: closestCellIndex, section: 0), at: .centeredHorizontally, animated: true)
            self.setNeedsLayout()
        }
    }
}


