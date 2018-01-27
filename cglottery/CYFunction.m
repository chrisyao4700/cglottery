//
//  CYFunction.m
//  cglottery
//
//  Created by OD INTERNATIONAL 3 on 1/27/18.
//  Copyright © 2018 OD INTERNATIONAL 3. All rights reserved.
//

#import "CYFunction.h"


@implementation CYFunction


+(int) getRandomPing{
    return arc4random_uniform(2600);
}

+(void) openWebWithURL:(NSURL *) url
       completeHandler: ( void (^)(BOOL success ) )successHandler{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        //[CYNotificationHandler addEventToCoredata:[CYNotificationHandler configEventDict:userInfo]];
        //NSLog(@"%@",userInfo);
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:successHandler];
    });
}
+(void) openWebWithURL:(NSURL *) url{
    dispatch_async(dispatch_get_main_queue(), ^{
        //[CYNotificationHandler addEventToCoredata:[CYNotificationHandler configEventDict:userInfo]];
        //NSLog(@"%@",userInfo);
        //NSLog(@"I AM HERE!");
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
    });
}
@end
