//
//  NewObject.m
//  borrame
//
//  Created by JAVIER CALATRAVA LLAVERIA on 11/03/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import "NewObject.h"

@implementation NewObject

+ (id)sharedInstance {
    static NewObject *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

-(id) init{
    if([super init]){
        self.iPropertyToBeObserved=3;
    }
    return self;
}


@end
