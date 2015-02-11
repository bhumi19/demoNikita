//
//  CollectionViewController.h
//  scroll demo
//
//  Created by Sunny on 10/02/15.
//  Copyright (c) 2015 ample-arch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UICollectionViewController<UICollectionViewDataSource,UICollectionViewDelegate>{
    NSArray *recipeImages;
}

@end
