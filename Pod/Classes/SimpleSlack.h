//
//  StarchupAPI.h
//  StarchupAPI
//
//  Created by Starchup, Inc on 11/30/14.
//  Copyright (c) 2014 Starchup, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleSlack : NSObject

- (instancetype)initWithWebHook:(NSString*)webhook;
- (instancetype)initWithWebHook:(NSString*)webhook andContext:(NSString*)slackContext;

-(void)post:(id)message;

@end