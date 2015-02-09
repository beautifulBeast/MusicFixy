//
//  PlaylistDetailViewController.h
//  Algorythm
//
//  Created by Jencks, Claire on 2/4/15.
//  Copyright (c) 2015 Jencks, Claire. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Playlist;

@interface PlaylistDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;

@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;

@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;

@property (weak, nonatomic) IBOutlet UILabel *artistLabel0;

@property (weak, nonatomic) IBOutlet UILabel *artistLabel1;

@property (weak, nonatomic) IBOutlet UILabel *artistLabel2;

@property (weak, nonatomic) IBOutlet UILabel *artistLabel3;

@property (weak, nonatomic) IBOutlet UILabel *artistLabel4;

@property (strong, nonatomic) Playlist *playlist;


@end
