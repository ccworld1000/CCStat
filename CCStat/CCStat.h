//
//  CCStat.h
//  CCStat
//
//  Created by dengyouhua on 17/3/24.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  CCStatType
 */
typedef NS_ENUM(NSInteger, CCStatType) {
    /**
     *  Begin
     */
    CCStatTypeBegin,
    /**
     *  CCStatTypeCCCamera
     */
    CCStatTypeCCCamera,
    /**
     *  CCStat
     */
    CCStatTypeCCStat,
    /**
     *  HSFont
     */
    CCStatTypeHSFont,
    /**
     *  CCSQLite
     */
    CCStatTypeCCSQLite,
    /**
     *  CCRecording
     */
    CCStatTypeCCRecording,
    /**
     *  HSDebug
     */
    CCStatTypeHSDebug,
    /**
     *  End
     */
    CCStatTypeEnd,
};

@interface CCStat : NSObject

/**
 *  loadingMobStat
 *
 *  @param type type description
 *  @param show show description
 */
+ (void) loadingMobStat : (CCStatType) type showDetail : (BOOL) show;

@end


@interface CCStatCell : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *appKey;   //only one
@property (nonatomic, copy) NSString *homepage;
@property (nonatomic, copy) NSString *platform;
@property (nonatomic, copy) NSString *author;
@property (nonatomic, copy) NSString *license;

@property (nonatomic) CCStatType type;

@property (nonatomic, copy) NSString *cname;    //optional
@property (nonatomic, copy) NSString *sdkType;  // reserved

@end
