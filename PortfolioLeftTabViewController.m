//
//  PortfolioLeftTabViewController.m
//  Depol2
//
//  Created by SDT-1 on 2014. 1. 20..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "PortfolioLeftTabViewController.h"
#import "PortfolioCenterTabViewController.h"
#import "PortfolioRightTabViewController.h"

@interface PortfolioLeftTabViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation PortfolioLeftTabViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    [self.scrollView setContentSize:CGSizeMake(320*2, 460)];
//    
//    PortfolioCenterTabViewController *centerVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"tab1"];
//    PortfolioRightTabViewController *rightVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"tab2"];
//    
//    centerVC.view.frame = CGRectMake(0, 20, 320, 460);
//    rightVC.view.frame = CGRectMake(320, 20, 320, 460);
//    
//    
//    self.scrollView.pagingEnabled = YES;
//    
//    [self.scrollView addSubview:centerVC.view];
//    [self.scrollView addSubview:rightVC.view];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
