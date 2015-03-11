//
//  NewObject.h
//  borrame
//
//  Created by JAVIER CALATRAVA LLAVERIA on 11/03/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewObject : NSObject

@property int iPropertyToBeObserved;

+ (id)sharedInstance;

@end
