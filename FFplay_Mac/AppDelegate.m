//
//  AppDelegate.m
//  FFplay_Mac
//
//  Created by 孙军 on 13-12-4.
//  Copyright (c) 2013年 Clov4r. All rights reserved.
//

#import "AppDelegate.h"
#include "ffplay.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    char argv[2][100]; //= {"ffplay", "/Users/sunjun/Desktop/desktop/测试视频/mkv/roman.mkv"};
    strcpy(argv[0], "ffplay");
    strcpy(argv[1], "/Users/sunjun/Desktop/desktop/xiao.flv");
//    self.window.
    data = (__bridge const void *)self.window;
    ffplay(2, argv);
    [self.view setHidden:YES];
//    data = (__bridge const void *)self.window;
    SDL_SysWMinfo info;
    SDL_GetWindowWMInfo(sdl_window , &info);
    NSLog(@"%@", info.info.cocoa.window);
    
}

@end
