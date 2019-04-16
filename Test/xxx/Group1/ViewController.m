//
//  ViewController.m
//  xxx
//
//  Created by vhall on 2019/4/8.
//  Copyright © 2019 vhall. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    NSLog(@"%s",__FUNCTION__);
}




- (BOOL)shouldAutorotate
{
    return YES;//支持重力感应
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return [super supportedInterfaceOrientations];//设置支持的转屏方向
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return self.interfaceOrientation;//设置初始的方向
}




- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    HomeViewController *homeVc = [[HomeViewController alloc] init];
    //设置homeVc的初始方向
    homeVc.interfaceOrientation = UIInterfaceOrientationLandscapeLeft;
    [self presentViewController:homeVc animated:YES completion:nil];
}

@end
