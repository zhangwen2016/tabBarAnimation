//
//  ViewController.h
//  tabBar动画
//
//  Created by Allen on 16/10/15.
//  Copyright © 2016年 Allen. All rights reserved.
//

#import "ALTabBar.h"

@implementation ALTabBar

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    //遍历判断self.subviews
    for (UIControl *tabBarBtn in self.subviews)
    {
        //判断是否是ALTbaBar
        if ([tabBarBtn isKindOfClass:NSClassFromString(@"UITabBarButton")])
        {
            [tabBarBtn addTarget:self action:@selector(tabBarBtnDidClick:) forControlEvents:UIControlEventTouchUpInside];
        }
    }
}

//添加动画
-(void)tabBarBtnDidClick:(UIControl *)tabBarButton
{
    //遍历出tabbar上的图片
    for (UIView *imageView in tabBarButton.subviews)
    {
        //判断图片是否是 
        if ([imageView isKindOfClass:NSClassFromString(@"UITabBarSwappableImageView")])
        {
            imageView.transform = CGAffineTransformMakeScale(0.5, 0.5);
            
            //动画
            [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:9 options:0 animations:^{
                
                imageView.transform = CGAffineTransformMakeScale(1.0, 1.0);
                
            } completion:^(BOOL finished) {
                
            }];
        }
    }
}


@end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

