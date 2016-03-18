//
//  FSBaseSubViewController.m
//  FastApp
//
//  Created by tangkunyin on 16/3/7.
//  Copyright © 2016年 www.shuoit.net. All rights reserved.
//

#import "FSBaseSubViewController.h"

@implementation FSBaseSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
    //自定义返回按钮
    UIButton *backBtn = [UICreator createButtonWithNormalImage:@"prev"
                                              highlightedImage:@"prev"
                                                        target:self
                                                        action:@selector(backToParentController)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
}

-(void)backToParentController
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
