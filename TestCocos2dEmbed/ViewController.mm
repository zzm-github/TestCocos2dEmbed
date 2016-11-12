//
//  ViewController.m
//  TestCocos2dEmbed
//
//  Created by 张小明 on 16/11/11.
//  Copyright © 2016年 mifunstudio. All rights reserved.
//

#import "ViewController.h"
#import "Cocos2dxUIViewController.h"
#import "Cocos2dxEmbed.h"

bool wasStarted = false;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)handlePlayBtnClick:(id)sender {
    Cocos2dxEmbed cocos2dxEmbed;
    cocos2dxEmbed.initConfig("test.js");
    Cocos2dxUIViewController *gameController = [Cocos2dxUIViewController alloc];
    [self presentViewController: gameController animated:YES completion:nil];
}

@end
