//
//  ViewController.m
//  Algorythm
//
//  Created by Jencks, Claire on 2/4/15.
//  Copyright (c) 2015 Jencks, Claire. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.aButton setTitle:@"Press Me!" forState:UIControlStateNormal];
    self.navigationItem.title = @"Playlist";

    //image container set-up
    self.playlistImageView0.layer.cornerRadius = 5;
    //button set-up
    self.aButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    //moves frame out in relation to text content
    self.aButton.contentEdgeInsets = UIEdgeInsetsMake(0.0f, 30.0f, 0.0f, 30.0f);
    //dynamic setup 
    self.aButton.titleLabel.adjustsFontSizeToFitWidth = YES;
    self.aButton.titleLabel.minimumScaleFactor = 0;
    self.aButton.layer.cornerRadius = 2;
    self.aButton.layer.borderWidth = 1;
    self.aButton.layer.borderColor = [UIColor blueColor].CGColor;
    
    Playlist *playlist= [[Playlist alloc] initWithIndex:0];
    self.playlistImageView0.image = playlist.playlistIcon;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"pushToDetail"]) {
        //do this
        PlaylistDetailViewController *playlistDetailViewController = (PlaylistDetailViewController *)segue.destinationViewController;
        //ireration 1 -> playlistDetailViewController.labelInfo = @"Push Complete";
        playlistDetailViewController.playlist = [[Playlist alloc] initWithIndex:0];
    }
    
    
    
    
}

@end
