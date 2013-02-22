//
//  View.m
//  Hello
//
//  Created by nyuguest on 2/7/13.
//  Copyright (c) 2013 nyuguest. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame:frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor yellowColor];        
        CGFloat w = self.bounds.size.width;
        CGFloat h = self.bounds.size.height;
        self.bounds=CGRectMake(-w /2, -h / 2, w, h);
        
        font = [UIFont systemFontOfSize: 32.0];
        string = @"Hello, World!";
        
        size = [string sizeWithFont: font];
        point = CGPointMake(-size.width /2, -size.height / 2);

	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code

	[string drawAtPoint: point withFont: font];
}

@end
