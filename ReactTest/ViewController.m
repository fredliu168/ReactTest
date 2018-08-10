//
//  ViewController.m
//  ReactTest
//
//  Created by fred liu on 2018/8/9.
//  Copyright © 2018年 fred liu. All rights reserved.
//

#import "ViewController.h"
#import <React/RCTRootView.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(goBack) name:@"dismissViewController" object:nil];
    NSLog(@"n1");
    
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *jsCodeLocation;
       jsCodeLocation = [NSURL URLWithString:@"http://192.168.0.68:8081/index.bundle?platform=ios&dev=true"];

    //jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index.ios" fallbackResource:nil];
    //jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"index" withExtension:@"bundle"];

    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"AwesomeProject"
                                                 initialProperties:nil
                                                     launchOptions:nil];
    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    self.view = rootView;

}

- (void)goBack {
    NSLog(@"hello world!");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
