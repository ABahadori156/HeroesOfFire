//
//  HeroesLibrary.m
//  HeroesOfFire
//
//  Created by Pasha Bahadori on 8/2/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import "HeroesLibrary.h"

@implementation HeroesLibrary

// Here we set our keys to constant strings so we don't retype the keys later
NSString *const kName = @"name";
NSString *const kDescription = @"description";
NSString *const kPictureIcon = @"pictureIcon";
NSString *const kPictureIconDetail = @"pictureIconDetail";
NSString *const kPictureIconMini = @"pictureIconMini";
NSString *const kBackgroundColor = @"backgroundColor";
NSString *const kMoveList = @"moveList";


-(instancetype)init {
    self = [super self];
    if (self) {
        // Here we set up our dictionary
        _library = @[@{kName: @"Ryu",
                       kDescription: @"The main protagonist of the Breath of Fire series.",
                       kPictureIcon: @"Ryu.png",
                       kPictureIconDetail: @"RyuDetail.jpg",
                       kPictureIconMini: @"RyuMini.png",
                       kBackgroundColor: @{@"red": @26.0, @"green": @32.0, @"blue": @232.0, @"alpha": @1.0},
                       kMoveList: @[@"-Drake Slash", @"-Mighty Roar", @"-Dragonstrike", @"-Ascension to 'Kaiser Dragon'"]
                       },
                     
                     @{kName: @"Bow",
                       kDescription: @"Ryu's childhood best friend. A professional archer and ex-thief.",
                       kPictureIcon: @"Bow.png",
                       kPictureIconDetail: @"BowDetail.jpg",
                       kPictureIconMini: @"BowMini.png",
                       kBackgroundColor: @{@"red": @71.0, @"green": @227.0, @"blue": @32.0, @"alpha": @1.0},
                       kMoveList: @[@"-Precision Shot", @"-Bandage Wound", @"-Arrow Barrage", @"-Deadly Shot"]
                       },
                     
                     @{kName: @"Katt",
                       kDescription: @"An exotic Tiger Lady from the Wer Tribe. She is fierce, agile, and has the strength of 10 tigers.",
                       kPictureIcon: @"Katt.png",
                       kPictureIconDetail: @"KattDetail.jpg",
                       kPictureIconMini: @"KattMini.png",
                       kBackgroundColor: @{@"red": @255.0, @"green": @102.0, @"blue": @51.0, @"alpha": @1.0},
                       kMoveList: @[@"-Dancing Strike", @"-Charm", @"-Wrathful Whirlwind", @"-Transformation to 'Weretiger'"]
                       },
                     
                     @{kName: @"Nina",
                       kDescription: @"The outcast Princess of Wyndia. Due to being born with black wings, she was exiled from her kingdom. She is an expert with magic.",
                       kPictureIcon: @"Nina.png",
                       kPictureIconDetail: @"NinaDetail.jpg",
                       kPictureIconMini: @"NinaMini.png",
                       kBackgroundColor: @{@"red": @166.0, @"green": @84.0, @"blue": @186.0, @"alpha": @1.0},
                       kMoveList: @[@"-Fireball", @"-Typhoon", @"-Hailstorm", @"-Nova Flare"],
                       },
                     
                    @{kName: @"Deis",
                     kDescription: @"A thousand year old sorceress who was one of the original heroes who saved the planet during the first cataclysm. She was forced to wake up to help our new heroes. Her magic is so strong, some believe she's actually a Goddess.",
                     kPictureIcon: @"Bleu.png",
                     kPictureIconDetail: @"DeisDetail.jpg",
                     kPictureIconMini: @"DeisMini.png",
                     kBackgroundColor: @{@"red": @250.0, @"green": @52.0, @"blue": @141.0, @"alpha": @1.0},
                     kMoveList: @[@"-Thunder Bolt", @"-Inferno Storm", @"-Earthquake", @"-Planetary Devastation"],
                     },
                     
                     @{kName: @"Jean",
                       kDescription: @"A beloved Prince and painter. He is loved by his people and his art is reknowned across the lands. His skill with a sword though needs work.",
                       kPictureIcon: @"Jean.png",
                       kPictureIconDetail: @"JeanDetail.jpg",
                       kPictureIconMini: @"JeanMini.png",
                       kBackgroundColor: @{@"red": @40.0, @"green": @246.0, @"blue": @250.0, @"alpha": @1.0},
                       kMoveList: @[@"-Piercing Strike", @"-Frog Song", @"-Licklash", @"-Song of Heroes"],
                       }];
    }
    // When we create an init method - (instancetype)init we always return self at the end
    return self;

}

@end
