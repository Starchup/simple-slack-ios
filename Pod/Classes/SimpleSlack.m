
//  Order.m
//  StarchupModels
//
//  Created by Starchup, Inc on 11/30/14.
//  Copyright (c) 2014 Starchup, Inc. All rights reserved.
//

#import "SimpleSlack.h"
#import "AFNetworking.h"

@implementation SimpleSlack {
    AFHTTPSessionManager *manager;
    NSString *url;
    NSString *context;
}


- (instancetype)initWithWebHook:(NSString*)webhook {
    self = [super init];
    if (self) {
        manager = [[AFHTTPSessionManager alloc] init];
        manager.requestSerializer = [AFJSONRequestSerializer serializer];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    }
    return self;
}
- (instancetype)initWithWebHook:(NSString*)webhook andContext:(NSString*)slackContext {
    self = [self initWithWebHook:webhook];
    if (self) {
        context = slackContext.copy;
    }
    return self;
}

-(void)post:(id)message {
    if (context) message = [NSString stringWithFormat:@"%@\n\n%@", context, message];
    [manager POST:url parameters:@{@"text": message} progress:nil success:nil failure:nil];
}

@end