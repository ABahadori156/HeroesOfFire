//
//  HeroDetailVC.m
//  HeroesOfFire
//
//  Created by Pasha Bahadori on 8/2/16.
//  Copyright © 2016 Pelican. All rights reserved.
//

#import "HeroDetailVC.h"
#import "Hero.h"

@interface HeroDetailVC ()

@end

@implementation HeroDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.hero) {
        self.heroCoverImage.image = self.hero.heroPictureDetail;
        self.heroCoverImage.backgroundColor = self.hero.heroBackgroundColor;
        self.heroName.text = self.hero.heroName;
        self.heroDescription.text = self.hero.heroDescription;
        self.miniView.image = self.hero.heroPictureMini;
        
        self.heroMove0.text = self.hero.heroMoveList[0];
        self.heroMove1.text = self.hero.heroMoveList[1];
        self.heroMove2.text = self.hero.heroMoveList[2];
        self.heroMove3.text = self.hero.heroMoveList[3];
        
    }
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
