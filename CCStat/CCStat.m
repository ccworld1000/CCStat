//
//  CCStat.m
//  CCStat
//
//  Created by dengyouhua on 17/3/28.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "CCStat.h"

#import <BaiduMobStat.h>

#define CCStatCell2Platform     @"iOS && OSX"
#define CCStatCelliOSPlatform   @"iOS"
#define CCStatCellOSXPlatform   @"OSX"

#define CCStatCellHomepage      @"https://github.com/ccworld1000"
#define CCStatCellAuthorInfo    @"CC : ccworld1000@gmail.com"
#define CCStatCellMITLicense    @"MITLicense"

@interface CCStatCell ()

- (void) showShortDetail;

@end

@implementation CCStatCell : NSObject

- (void) showShortDetail {
    NSLog(@"type : %ld | name : %@ | appKey : %@ \nsummary : %@\nhomepage : %@\nplatform : %@ | author : %@ |  license : %@",
          (long)self.type,
          self.name,
          self.appKey,
          self.summary,
          self.homepage,
          self.platform,
          self.author,
          self.license
          );
}

@end


@interface CCStat ()

+ (CCStat *) defaultStat : (CCStatType) type;

@end

@implementation CCStat

+ (CCStat *) defaultStat : (CCStatType) type {
    static CCStat *stat = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        stat = [CCStat new];
    });
    
    
    return stat;
}

- (void) loadingMobStat:(NSString *)appKey {
    BaiduMobStat* statTracker = [BaiduMobStat defaultStat];
    statTracker.shortAppVersion  = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    statTracker.enableDebugOn = NO;
    
    [statTracker startWithAppId:appKey];
}


+ (void) loadingMobStat : (CCStatType) type showDetail : (BOOL) show {
    if ((type <= CCStatTypeBegin) && (type >= CCStatTypeEnd)) {
        NSLog(@"you should custom your sdk!");
        return;
    }
    
    CCStatCell *c = [CCStatCell new];
    
    switch (type) {
        case CCStatTypeCCCamera:
        {
            c.type = type;
            c.name = @"CCCamera";
            c.appKey = @"c68e26ca28";
            c.summary = @"CCCamera";
            c.homepage = CCStatCellHomepage;
            c.platform = CCStatCelliOSPlatform;
            c.author = CCStatCellAuthorInfo;
            c.license = CCStatCellMITLicense;
        }
            break;
        case CCStatTypeCCStat:
        {
            c.type = type;
            c.name = @"CCStat";
            c.appKey = @"2ade98f9ce";
            c.summary = @"CCStat [personal]";
            c.homepage = CCStatCellHomepage;
            c.platform = CCStatCelliOSPlatform;
            c.author = CCStatCellAuthorInfo;
            c.license = CCStatCellMITLicense;
        }
            break;
        case CCStatTypeHSFont:
        {
            c.type = type;
            c.name = @"HSFont";
            c.appKey = @"8ae518480d";
            c.summary = @"HSFont simple support macosx and iOS, can simple replace NSFont or UIFont";
            c.homepage = CCStatCellHomepage;
            c.platform = CCStatCelliOSPlatform;
            c.author = CCStatCellAuthorInfo;
            c.license = CCStatCellMITLicense;
        }
            break;
        case CCStatTypeCCSQLite:
        {
            c.type = type;
            c.name = @"CCSQLite";
            c.appKey = @"5df1e1c27d";
            c.summary = @"CCSQLite for iOS && OSX (A Cocoa / Objective-C wrapper around SQLite. YapDatabase(key/value store) + FMDB (ARC))";
            c.homepage = CCStatCellHomepage;
            c.platform = CCStatCelliOSPlatform;
            c.author = CCStatCellAuthorInfo;
            c.license = CCStatCellMITLicense;
        }
            break;
        case CCStatTypeCCRecording:
        {
            c.type = type;
            c.name = @"CCRecording";
            c.appKey = @"ac2a03a703";
            c.summary = @"CCRecording : recording your app when you need";
            c.homepage = CCStatCellHomepage;
            c.platform = CCStatCelliOSPlatform;
            c.author = CCStatCellAuthorInfo;
            c.license = CCStatCellMITLicense;
        }
            break;
        case CCStatTypeHSDebug:
        {
            c.type = type;
            c.name = @"HSDebug";
            c.appKey = @"a01ea9021f";
            c.summary = @"HSDebug : A flexible, lightweight, scalable, customizable log debugging";
            c.homepage = CCStatCellHomepage;
            c.platform = CCStatCell2Platform;
            c.author = CCStatCellAuthorInfo;
            c.license = CCStatCellMITLicense;
        }
            break;
        case CCStatTypeCCSugar:
        {
            c.type = type;
            c.name = @"CCSugar";
            c.appKey = @"6f94a5b940";
            c.summary = @"CCSugar";
            c.homepage = CCStatCellHomepage;
            c.platform = CCStatCell2Platform;
            c.author = CCStatCellAuthorInfo;
            c.license = CCStatCellMITLicense;
        }
            break;
        case CCStatTypeCCRefresh:
        {
            c.type = type;
            c.name = @"CCRefresh";
            c.appKey = @"c502b3e8a8";
            c.summary = @"CCRefresh";
            c.homepage = CCStatCellHomepage;
            c.platform = CCStatCelliOSPlatform;
            c.author = CCStatCellAuthorInfo;
            c.license = CCStatCellMITLicense;
        }
            break;
        case CCStatTypeCCTALib:
        {
            c.type = type;
            c.name = @"CCTALib";
            c.appKey = @"209712eca6";
            c.summary = @"CCTALib : TA-Lib is widely used by trading software developers requiring to perform technical analysis of financial market data";
            c.homepage = CCStatCellHomepage;
            c.platform = CCStatCell2Platform;
            c.author = CCStatCellAuthorInfo;
            c.license = CCStatCellMITLicense;
        }
            break;
        default:
            break;
    }
    
    if (show) {
        [c showShortDetail];
    }
    
    [[self defaultStat: c.type] loadingMobStat: c.appKey];
}

@end
