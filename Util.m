//
//  Util.m
//  Space Cat
//
//  Created by Jacob Cho on 2014-11-10.
//  Copyright (c) 2014 com.lighthouselabs. All rights reserved.
//

#import "Util.h"

@implementation Util

+(NSInteger)randomWithMin:(NSInteger)min max:(NSInteger)max {
    
    
    return arc4random() % (max - min) + min;
}

@end
