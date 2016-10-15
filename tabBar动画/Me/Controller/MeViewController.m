//
//  ViewController.h
//  tabBar动画
//
//  Created by Allen on 16/10/15.
//  Copyright © 2016年 Allen. All rights reserved.
//

#import "MeViewController.h"

@interface MeViewController ()

@end

@implementation MeViewController

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor blueColor];
    
    
}




@end
