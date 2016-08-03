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
            // Here we set the index as the heroImageView that was tapped - so if the third hero was tapped, this index will be 2
            NSUInteger index = [self.heroImageViews indexOfObject:tapHeroImageView];
            
            HeroDetailVC *dvc = (HeroDetailVC *)segue.destinationViewController;
            
            // we use the index that we created to create that particular tapped hero's instance, and then assign that hero instance to the HeroDetailVC.h hero property
            dvc.hero = [[Hero alloc] initWithIndex:index];
        }
        
        
        
        
    }
}


@end
