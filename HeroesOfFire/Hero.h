//
//  Hero.h
//  HeroesOfFire
//
//  Created by Pasha Bahadori on 8/2/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Hero : NSObject
// We declare the properties of our Hero class
@property (strong, nonatomic) NSString *heroName;
@property (strong, nonatomic) NSString *heroDescription;
@property (strong, nonatomic) UIImage *heroPictureIcon;
@property (strong, nonatomic) UIImage *heroPictureDetail;
@property (strong, nonatomic) UIImage *heroPictureMini;
@property (strong, nonatomic) NSArray *heroMoveList;
@property (strong, nonatomic) UIColor *heroBackgroundColor;

@property (strong, nonatomic) UIImageView *imageView;

// Below we declare our hero init method. It takes an arguement of NSUInteger so we can locate it through it's index
-(instancetype)initWithIndex:(NSUInteger)index;

@end
