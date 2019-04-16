//
//  HomeViewController.m
//  xxx
//
//  Created by vhall on 2019/4/10.
//  Copyright © 2019 vhall. All rights reserved.
//

#import "HomeViewController.h"
#import "NavViewController.h"
#import "MyViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.topView.backgroundColor = [UIColor purpleColor];
}

- (BOOL)shouldAutorotate
{
    return NO;//不支持重力感应
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return self.interfaceOrientation;//设置初始的方向，可以用过interfaceOrientation属性直接设置该界面的初始方向
}





- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    MyViewController *myVc = [[MyViewController alloc] init];
    NavViewController *nav = [[NavViewController alloc] initWithRootViewController:myVc];
    //设置nav初始方向
    [self presentViewController:nav animated:YES completion:nil];
}

@end
