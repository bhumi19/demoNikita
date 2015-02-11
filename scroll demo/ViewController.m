//
//  ViewController.m
//  scroll demo
//
//  Created by Sunny on 07/02/15.
//  Copyright (c) 2015 ample-arch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *imagesarray = [[NSMutableArray alloc]initWithObjects:@"001.png",@"002.png",@"003.png",@"004.png",@"005.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png",@"006.png", nil];
    
    UIScrollView  *scrollVie=[[UIScrollView alloc]init];
    
    scrollVie.delegate = self;
    scrollVie.scrollEnabled = YES;
    int scrollWidth = 100;
    //scrollVie.contentSize = CGSizeMake(scrollWidth,100);
    scrollVie.frame=CGRectMake(0, 51, self.view.frame.size.width, 50);
    scrollVie.backgroundColor=[UIColor redColor];
    
    
    
    
    int xOffset = 0;
    
    for(int index=0; index < [imagesarray count]; index++)
    {
        
        UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(xOffset,0,50, 50)];
        img.image = [UIImage imageNamed:[imagesarray objectAtIndex:index]];
        
        [scrollVie addSubview:img];
        
        xOffset+=70;
        
        
    }
    
    [self.view addSubview:scrollVie];
    
    scrollVie.contentSize = CGSizeMake(scrollWidth+xOffset-100,50);
  //  [self setupScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) setupScrollView {
    //add the scrollview to the view
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0,
                                                                     self.view.frame.size.width,
                                                                    100)];
    self.scrollView.pagingEnabled = YES;
    [self.scrollView setAlwaysBounceVertical:NO];
    //setup internal views
    NSInteger numberOfViews = 6;
    for (int i = 0; i < numberOfViews; i++) {
        CGFloat xOrigin = i * self.view.frame.size.width;
        UIImageView *image = [[UIImageView alloc] initWithFrame:
                              CGRectMake(xOrigin, 0,
                                         self.view.frame.size.width,
                                         100)];
        image.image = [UIImage imageNamed:[NSString stringWithFormat:
                                           @"00%d", i+1]];
        image.contentMode = UIViewContentModeScaleAspectFit;
        [self.scrollView addSubview:image];
    }
    //set the scroll view content size
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width *
                                             numberOfViews,
                                             self.view.frame.size.height);
    //add the scrollview to this view
    [self.view addSubview:self.scrollView];
}
@end
