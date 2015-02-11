//
//  CollectionViewController.m
//  scroll demo
//
//  Created by Sunny on 10/02/15.
//  Copyright (c) 2015 ample-arch. All rights reserved.
//

#import "CollectionViewController.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
   // [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    recipeImages = [[NSArray alloc]initWithObjects:@"001.png",@"002.png",@"003.png",@"004.png",@"005.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png", nil];
    //self.collectionView.allowsMultipleSelection = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return recipeImages.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    //cell.frame = CGRectMake(cell.frame.origin.x, cell.frame.origin.y, 50, 50);
    
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    // recipeImageView.frame = CGRectMake(recipeImageView.frame.origin.x, recipeImageView.frame.origin.y, 50, 50);
    
    return cell;
}
#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
     UICollectionViewCell* cell = [collectionView cellForItemAtIndexPath:indexPath];
   // cell.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    UIButton *recipeImageView11 = (UIButton *)[cell viewWithTag:500];
    recipeImageView11.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"selectedTick.png"]];
  //  [recipeImageView11 bringSubviewToFront:cell];
//    [UIView transitionWithView:collectionView
//                      duration:.5
//                       options:UIViewAnimationOptionTransitionNone
//                    animations:^{
//                        
//                        //any animatable attribute here.
//                        cell.frame = CGRectMake(cell.frame.origin.x, cell.frame.origin.y, 100, 100);
//                        
//                    } completion:^(BOOL finished) {
//                        
//                        //whatever you want to do upon completion
//                        
//                    }];
}
#pragma mark Collection view layout things
// Layout: Set cell size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"SETTING SIZE FOR ITEM AT INDEX %ld", (long)indexPath.row);
    CGSize mElementSize = CGSizeMake(60,60);
    return mElementSize;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 2.0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 2.0;
}

// Layout: Set Edges
- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    // return UIEdgeInsetsMake(0,8,0,8);  // top, left, bottom, right
    return UIEdgeInsetsMake(0,0,0,0);  // top, left, bottom, right
}


@end
