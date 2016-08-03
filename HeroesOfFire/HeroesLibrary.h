//
//  HeroesLibrary.h
//  HeroesOfFire
//
//  Created by Pasha Bahadori on 8/2/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import <Foundation/Foundation.h>

// Here we delcare the name of the keys in our key-value pairs and set them as extern constants so we can use them anywhere
extern NSString *const kName;
extern NSString *const kDescription;
extern NSString *const kPictureIcon;
extern NSString *const kPictureIconDetail;
extern NSString *const kPictureIconMini;
extern NSString *const kBackgroundColor;
extern NSString *const kMoveList;

@interface HeroesLibrary : NSObject
@property (strong, nonatomic) NSArray *library;


@end
