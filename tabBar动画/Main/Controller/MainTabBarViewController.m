//
//  ViewController.h
//  tabBar动画
//
//  Created by Allen on 16/10/15.
//  Copyright © 2016年 Allen. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "ALTabBar.h"
#import "HomeViewController.h"
#import "MeViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ALTabBar *tabbar = [[ALTabBar alloc]init];
    
    [self setValue:tabbar forKey:@"tabBar"];
    
    [self addChildControllers];
    
}

#pragma mark ---添加viewControllers
-(void)addChildControllers {
    
    UIViewController *homeViewController = [self addChildControllerVc:[[HomeViewController alloc]init] title:@"首页" imageName:@"v2_home"];
    
    
    
    UIViewController *meViewController = [self addChildControllerVc:[[MeViewController alloc]init] title:@"我的" imageName:@"v2_my"];
   
    NSArray *array = @[homeViewController,meViewController];
    
    self.viewControllers = array;
}

-(UIViewController *)addChildControllerVc:(UIViewController*)vc title:(NSString *)title imageName:(NSString *)imageName {
    
    vc.tabBarItem.title = title;
    
    vc.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_r",imageName]] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    
    [vc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor darkGrayColor]} forState:UIControlStateNormal];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
        
    return nav;
}


@end
