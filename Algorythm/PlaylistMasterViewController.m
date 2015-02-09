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

    //image container set-up
    //self.playlistImageView0.layer.cornerRadius = 5;
    
    //Playlist *playlist= [[Playlist alloc] initWithIndex:0];
    //self.playlistImageView0.image = playlist.playlistIcon;

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
- (IBAction)iconTap:(id)sender {
    [self performSegueWithIdentifier:@"pushToDetail" sender:sender];
}

@end
