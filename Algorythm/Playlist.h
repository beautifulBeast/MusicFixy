//
//  Playlist.h
//  Algorythm
//
//  Created by Jencks, Claire on 2/6/15.
//  Copyright (c) 2015 Jencks, Claire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject


//store info from the music library model
@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
//must import UIKit for UIImage Property
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistIconLarge;
//artists are stored as array in Library
@property (strong, nonatomic) NSArray *playlistArtists;
//using rgb a values from library array
@property (strong, nonatomic) UIColor *backgroundColor;

-(instancetype)initWithIndex: (NSUInteger)index;


@end
