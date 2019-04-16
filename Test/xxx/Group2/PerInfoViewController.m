//
//  PerInfoViewController.m
//  xxx
//
//  Created by vhall on 2019/4/11.
//  Copyright © 2019 vhall. All rights reserved.
//

#import "PerInfoViewController.h"
#import "DetailViewController.h"

@interface PerInfoViewController ()

@end

@implementation PerInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)buttonClick:(UIButton *)sender {
    DetailViewController *vc = [[DetailViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    //如果这里需要设置竖屏不支持重力感应，需要创建一个UINavigationController的类，实现对应的方法，设置才会有用，否则这里的设置是无用的。
//    nav.autoRotate = NO;
//    nav.orientation = UIInterfaceOrientationPortrait;
    [self presentViewController:nav animated:YES completion:nil];
}



- (BOOL)shouldAutorotate {
    return NO;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return self.orientation;
}


@end
