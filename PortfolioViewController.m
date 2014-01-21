//
//  PortfolioViewController.m
//  Depol2
//
//  Created by Lee HyunYoung on 2014. 1. 20..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//
// 포트폴리오 메인 화면
// 스크롤뷰 등록해서 3개의 뷰컨트롤러를 넣는다.
// 버튼으로 스크롤 뷰 이동한다.

#import "PortfolioViewController.h"
#import "PortfolioCenterTabViewController.h"
#import "PortfolioLeftTabViewController.h"
#import "PortfolioRightTabViewController.h"

@interface PortfolioViewController ()<UIScrollViewDelegate>

@property (strong, nonatomic) UIScrollView *scrollView;
@end

@implementation PortfolioViewController


- (IBAction)selectTab1:(id)sender {
    [self.scrollView scrollRectToVisible:CGRectMake(self.scrollView.frame.origin.x, self.scrollView.frame.origin.y,
                                                    self.scrollView.frame.size.width, self.scrollView.frame.size.height)
                                         animated:YES];
}
- (IBAction)selectTab2:(id)sender {
    [self.scrollView scrollRectToVisible:CGRectMake(self.scrollView.frame.origin.x + 320, self.scrollView.frame.origin.y,
                                                    self.scrollView.frame.size.width, self.scrollView.frame.size.height)
                                         animated:YES];

}
- (IBAction)selectTab3:(id)sender {
    [self.scrollView scrollRectToVisible:CGRectMake(self.scrollView.frame.origin.x + 640, self.scrollView.frame.origin.y,
                                                    self.scrollView.frame.size.width, self.scrollView.frame.size.height)
                                         animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20, 320, 416)];
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
    self.scrollView.bounces = NO;
    
    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
