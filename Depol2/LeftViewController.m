//
//  LeftViewController.m
//  Depol2
//
//  Created by SDT-1 on 2014. 1. 16..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "LeftViewController.h"
#import "TempViewController.h"
#import "UIViewController+MMDrawerController.h"
#import "CenterViewController.h"

@interface LeftViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableViewCell *table;

@end

@implementation LeftViewController {
    NSArray *data;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL_ID" forIndexPath:indexPath];
    cell.textLabel.text = [data objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        CenterViewController *centerVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"center"];
        [self.mm_drawerController setCenterViewController:centerVC withCloseAnimation:YES completion:nil];
    }else if (indexPath.row == 1) {
         TempViewController *centerVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"temp"];
        [self.mm_drawerController setCenterViewController:centerVC withCloseAnimation:YES completion:nil];
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    data = @[@"1", @"2"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
