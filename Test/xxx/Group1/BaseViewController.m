//
//  BaseViewController.m
//  xxx
//
//  Created by vhall on 2019/4/8.
//  Copyright © 2019 vhall. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()


@end

@implementation BaseViewController

- (instancetype)init {
    if (self = [super init]) {
        _interfaceOrientation = UIInterfaceOrientationPortrait;
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        _interfaceOrientation = UIInterfaceOrientationPortrait;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.topView = [[UIView alloc] init];
    self.topView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.topView];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    self.topView.frame = CGRectMake(0, 20, CGRectGetWidth(self.view.frame)*0.5, CGRectGetHeight(self.view.frame)*0.5);
}



- (BOOL)shouldAutorotate {
    return NO;
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAllButUpsideDown;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return _interfaceOrientation;
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
