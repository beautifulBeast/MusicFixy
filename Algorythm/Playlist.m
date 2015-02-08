//
//  Playlist.m
//  Algorythm
//
//  Created by Jencks, Claire on 2/6/15.
//  Copyright (c) 2015 Jencks, Claire. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

//index is the index within the array of playlists (Music library)
//simple data model (more complex when using apis)
-(instancetype)initWithIndex: (NSUInteger)index {
    //super class initializer
    self = [super init];
    if (self) {
        //create instance of music library inside our init method so we can access our data
        MusicLibrary *musicLibrary = [MusicLibrary new];
        
        //assign musiclibrary property to a local variable to get access to the array.
        NSArray *library = musicLibrary.library;
        
        //retrieving playlist values using [index] parameter
        NSDictionary *playlistDictionary = library[index];
        //retrieve attributes by passing in relevant keys - these are external properties declared in MusicLibary.h file
        //here we're using a property's backing instance variable (exception - almost always we use self to access properties - except in init methods)
        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        
        NSString *imageName = [playlistDictionary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:imageName];
        
        NSString *largeImageName = [playlistDictionary objectForKey:kLargeIcon];
        _playlistIconLarge = [UIImage imageNamed:largeImageName];
        
        
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbColorFromDictionary:colorDictionary];
    }
    return self;
}

- (UIColor *)rgbColorFromDictionary: (NSDictionary *)colorDictionary {
   //colors must be cast a double value because NSDictionarys only hold values of type NSNumber. nsdicts only hold OBJECTS, NOT primitive values.
    //so this value must get converted from a NSnumber to a float using doublevalue method.
    
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return  [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
