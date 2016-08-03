//
//  HeroDetailVC.h
//  HeroesOfFire
//
//  Created by Pasha Bahadori on 8/2/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import <UIKit/UIKit.h>

// Here we import our Hero class
@class Hero;

@interface HeroDetailVC : UIViewController
// We declare our hero instance here that we are passing from the masterVC
@property (strong, nonatomic) Hero *hero;

@property (weak, nonatomic) IBOutlet UIImageView *heroCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *heroName;
@property (weak, nonatomic) IBOutlet UILabel *heroDescription;
@property (weak, nonatomic) IBOutlet UILabel *heroMove0;
@property (weak, nonatomic) IBOutlet UILabel *heroMove1;
@property (weak, nonatomic) IBOutlet UILabel *heroMove2;
@property (weak, nonatomic) IBOutlet UILabel *heroMove3;
@property (weak, nonatomic) IBOutlet UIImageView *miniView;

@end
