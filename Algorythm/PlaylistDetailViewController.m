//
//  PlaylistDetailViewController.m
//  Algorythm
//
//  Created by Jencks, Claire on 2/4/15.
//  Copyright (c) 2015 Jencks, Claire. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor purpleColor]];
    self.navigationItem.title = @"Artist";
    
    //iteration 1 -> self.detailLabel.text = self.labelInfo;
    //iteration 2 -> self.detailLabel.text = self.playlist.playlistTitle;
    
    if (self.playlist) {
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
