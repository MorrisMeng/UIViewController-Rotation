//
//  MyViewController.m
//  xxx
//
//  Created by vhall on 2019/4/10.
//  Copyright © 2019 vhall. All rights reserved.
//

#import "MyViewController.h"
#import "SettingViewController.h"
@class NavViewController;

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    SettingViewController *setVc = [[SettingViewController alloc] init];
    //当再铺上到下一界面时，支持的转屏设置等，都已经在NavViewController中设置过，所以当下个push出来的界面需要的转屏设置和默认的设置不同时，这种方式就不起作用了。
    //[self.navigationController pushViewController:setVc animated:YES];
    
    [self.navigationController presentViewController:setVc animated:YES completion:nil];
    //[self presentViewController:setVc animated:YES completion:nil];
}

@end
