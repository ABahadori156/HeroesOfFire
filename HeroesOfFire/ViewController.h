//
//  ViewController.h
//  HeroesOfFire
//
//  Created by Pasha Bahadori on 8/1/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
// Create the IBOutlet Collection
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *heroImageViews;


@end

