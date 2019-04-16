//
//  MainViewController.m
//  xxx
//
//  Created by vhall on 2019/4/11.
//  Copyright © 2019 vhall. All rights reserved.
//

#import "MainViewController.h"
#import "PerInfoViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)buttonClick:(UIButton *)sender {
    PerInfoViewController *vc = [[PerInfoViewController alloc] init];
    //设置默认竖屏
    vc.orientation = UIInterfaceOrientationPortrait;
    [self presentViewController:vc animated:YES completion:nil];
}



- (BOOL)shouldAutorotate {
    return self.autoRotate;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return self.orientation;
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
