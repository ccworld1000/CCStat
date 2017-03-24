//
//  CCStat.m
//  CCStat
//
//  Created by dengyouhua on 17/3/24.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "CCStat.h"


@implementation CCStatCell : NSObject

@end

@interface CCStat ()

@property (nonatomic) CCStatType type;

@end

@implementation CCStat

+ (CCStat *) defaultStat : (CCStatType) type {
    static CCStat *stat = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        stat = [CCStat new];
        stat.type = type;
    });
    
    
    return stat;
}

@end

