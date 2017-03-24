//
//  CCStat.h
//  CCStat
//
//  Created by dengyouhua on 17/3/24.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCStatCell : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *Appkey;
@property (nonatomic, copy) NSString *homepage;
@property (nonatomic, copy) NSString *platform;
@property (nonatomic, copy) NSString *author;
@property (nonatomic, copy) NSString *license;

@end

/**
 *  CCStatType
 */
typedef NS_ENUM(NSInteger, CCStatType) {
    /**
     *  Begin
     */
    CCStatTypeBegin,
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

+ (CCStat *) defaultStat : (CCStatType) type;

@end
