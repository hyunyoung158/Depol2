//
//  PortfolioViewController.m
//  Depol2
//
//  Created by Lee HyunYoung on 2014. 1. 20..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "PortfolioViewController.h"
#import "PortfolioCenterTabViewController.h"
#import "PortfolioLeftTabViewController.h"
#import "PortfolioRightTabViewController.h"

@interface PortfolioViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation PortfolioViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    PortfolioLeftTabViewController *leftVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"tab1"];
    PortfolioCenterTabViewController *centerVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"tab2"];
    PortfolioRightTabViewController *rightVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"tab3"];
    
    NSLog(@"origin x :%f / origin y : %f / size width : %d / size height : %d", self.scrollView.frame.origin.x, self.scrollView.frame.origin.y,
          (int)self.scrollView.frame.size.width, (int)self.scrollView.frame.size.height);
    
    leftVC.view.frame = CGRectMake(self.scrollView.frame.origin.x, self.scrollView.frame.origin.y,
                                   self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    centerVC.view.frame = CGRectMake(self.scrollView.frame.origin.x + 320, self.scrollView.frame.origin.y,
                                     self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    rightVC.view.frame = CGRectMake(self.scrollView.frame.origin.x + 640, self.scrollView.frame.origin.y,
                                    self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    
    [self.scrollView addSubview:leftVC.view];
    [self.scrollView addSubview:centerVC.view];
    [self.scrollView addSubview:rightVC.view];
    
    [self.scrollView setContentSize:CGSizeMake(320*3, self.scrollView.frame.size.height)];
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.alwaysBounceHorizontal = NO;
    self.scrollView.alwaysBounceVertical = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
