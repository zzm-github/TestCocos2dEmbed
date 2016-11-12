//
//  AppDelegate.m
//  TestCocos2dEmbed
//
//  Created by 张小明 on 16/11/11.
//  Copyright © 2016年 mifunstudio. All rights reserved.
//

#import "AppDelegate.h"
#import "Cocos2dxEmbed.h"
#import "cocos2d.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    Cocos2dxEmbed *embedApp = (Cocos2dxEmbed*)Cocos2dxEmbed::getInstance();
    if(embedApp) {
        embedApp->pauseDirector();
    }
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    Cocos2dxEmbed *embedApp = (Cocos2dxEmbed*)Cocos2dxEmbed::getInstance();
    if(embedApp) {
        embedApp->applicationDidEnterBackground();
    }
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    Cocos2dxEmbed *embedApp = (Cocos2dxEmbed*)Cocos2dxEmbed::getInstance();
    if(embedApp) {
        embedApp->applicationWillEnterForeground();
    }
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    Cocos2dxEmbed *embedApp = (Cocos2dxEmbed*)Cocos2dxEmbed::getInstance();
    if(embedApp) {
        embedApp->resumeDirector();
    }
}


- (void)applicationWillTerminate:(UIApplication *)application {
    Cocos2dxEmbed *embedApp = (Cocos2dxEmbed*)Cocos2dxEmbed::getInstance();
    if(embedApp) {
        embedApp->end();
        Cocos2dxEmbed::destroyInstance();
    }
}


@end
