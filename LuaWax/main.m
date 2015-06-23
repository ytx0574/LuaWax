//
//  main.m
//  LuaWax
//
//  Created by Johnson on 6/23/15.
//  Copyright (c) 2015 Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "wax.h"
#import "wax_http.h"
#import "wax_json.h"
#import "wax_filesystem.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        wax_start("AppDelegate.lua", luaopen_wax_http, luaopen_wax_json, luaopen_wax_filesystem, nil);
        return UIApplicationMain(argc, argv, nil, @"AppDelegate");
        return 0;
    }
}
