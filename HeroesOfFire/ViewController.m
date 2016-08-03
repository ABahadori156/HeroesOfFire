//
//  ViewController.m
//  HeroesOfFire
//
//  Created by Pasha Bahadori on 8/1/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import "ViewController.h"
#import "HeroDetailVC.h"
#import "Hero.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // I want to iterate through each hero from my dictionaries and assign their pictures to each imageView on my masterVC
    // So hero 0's picture goes with imageView0
    for (NSUInteger index = 0; index < self.heroImageViews.count; index++) {
        Hero *hero = [[Hero alloc] initWithIndex:index];
        UIImageView *heroImageView = self.heroImageViews[index];
        
        heroImageView.image = hero.heroPictureIcon;
        heroImageView.backgroundColor = hero.heroBackgroundColor;
    }
    
}

-(IBAction)showHeroDetail:(id)sender{
    [self performSegueWithIdentifier:@"segueToHeroDetail" sender:sender];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"segueToHeroDetail"]) {
        UIImageView *tapHeroImageView = (UIImageView *)[sender view];
        
        if ([self.heroImageViews containsObject:tapHeroImageView]) {
            NSUInteger index = [self.heroImageViews indexOfObject:tapHeroImageView];
            
            HeroDetailVC *dvc = (HeroDetailVC *)segue.destinationViewController;
            
            // I transfer hero which is an instance of the Hero class
            dvc.hero = [[Hero alloc] initWithIndex:index];
        }
        
        
        
        
    }
}


@end
