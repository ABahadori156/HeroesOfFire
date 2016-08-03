//
//  Hero.m
//  HeroesOfFire
//
//  Created by Pasha Bahadori on 8/2/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import "Hero.h"
#import "HeroesLibrary.h"

@implementation Hero

-(instancetype)initWithIndex:(NSUInteger)index{
    self = [super self];
    if (self) {
        
        // UNPACKING: Here we create an instance of our HeroesLibrary, then an instance of our library array, then an instance of our dictionaries to get the data inside it
        HeroesLibrary *heroesLibrary = [[HeroesLibrary alloc] init];
        NSArray *heroLibrary = heroesLibrary.library;
        NSDictionary *heroDict = heroLibrary[index];
        
        // Strings
        _heroName = [heroDict objectForKey:kName];
        _heroDescription = [heroDict objectForKey:kDescription];
        
        
        // Images
        NSString *iconName = [heroDict objectForKey:kPictureIcon];
        _heroPictureIcon = [UIImage imageNamed:iconName];
        
        NSString *iconDetail = [heroDict objectForKey:kPictureIconDetail];
        _heroPictureDetail = [UIImage imageNamed:iconDetail];
        
        NSString *iconMini = [heroDict objectForKey:kPictureIconMini];
        _heroPictureMini = [UIImage imageNamed:iconMini];
        
        
        
        // Array
        _heroMoveList = [NSArray arrayWithArray:[heroDict objectForKey:kMoveList]];
        
        
        // Color*
        NSDictionary *colorDictionary = [heroDict objectForKey:kBackgroundColor];
        _heroBackgroundColor = [self rgbColorFromDictionary:colorDictionary];
        
        // ImageView: These are the imageViews we will be putting in an IBOutletCollection on our masterVC
        _imageView = [[UIImageView alloc] initWithImage:_heroPictureIcon];
       
        
        
        
    }
    return self;
}

// This helper method converts our NSNumber values from our colorDictionaries into CGFloats since dictionaries can only hold objects - not primitive values
- (UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary {
    
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
    
}

    


@end
