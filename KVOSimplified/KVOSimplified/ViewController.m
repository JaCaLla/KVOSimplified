//
//  ViewController.m
//  KVOSimplified
//
//  Created by JAVIER CALATRAVA LLAVERIA on 11/03/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import "ViewController.h"
#import "NewObject.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [[NewObject sharedInstance] addObserver:self forKeyPath:@"iPropertyToBeObserved" options:NSKeyValueObservingOptionInitial context:nil];
    
}

-(void)dealloc{
    [[NewObject sharedInstance] removeObserver:self forKeyPath:@"iPropertyToBeObserved"];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    NewObject  *aNewObject=[NewObject sharedInstance];
    aNewObject.iPropertyToBeObserved=5;
}




- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"iPropertyToBeObserved"]) {
        NSLog(@"New Value:%d",[[NewObject sharedInstance] iPropertyToBeObserved]);
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}



@end
