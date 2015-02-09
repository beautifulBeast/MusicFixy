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
    
    self.navigationItem.title = @"Playlists";

    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {
        NSLog(@"self.playlistImageViews.count:%lu", self.playlistImageViews.count);
        //iterate through playlist array and populate icons into imageviews
        //access playlist
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        
        //store selected instance, (via outletted array) in an imageview instance
        UIImageView *playlistImageView = self.playlistImageViews[index];
        NSLog(@"index:%lu ", (unsigned long)index);

        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
            }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"pushToDetail"]) {
        
            //track the imageview that triggered the segue
        UIImageView *playlistImageView = (UIImageView *)[sender view];
        
        if ([self.playlistImageViews containsObject:playlistImageView]) {
            //track index of that imageview (which will give you the index of the corresponding playlist info
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            PlaylistDetailViewController *playlistDetailViewController = (PlaylistDetailViewController *)segue.destinationViewController;
            
            playlistDetailViewController.playlist = [[Playlist alloc] initWithIndex:index];
        }
    }
    
}
- (IBAction)iconTap:(id)sender {
    [self performSegueWithIdentifier:@"pushToDetail" sender:sender];
}

@end
