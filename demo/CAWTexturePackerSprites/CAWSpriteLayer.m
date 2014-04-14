/**
 * CALayer class to display frames and animations from a sprite sheet
 * created with TexturePacker
 *
 * www.codeandweb.com/texturepacker
 *
 * Copyright (c) 2013 by CodeAndWeb / Andreas Loew
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#import "CAWSpriteLayer.h"
#import "CAWSpriteCoreLayer.h"

@implementation CAWSpriteLayer

+ (id) layerWithSpriteData:(NSDictionary *)spriteData andImage:(UIImage*)img
{
    return [[[CAWSpriteLayer alloc] initWithSpriteData:spriteData andImage:img] autorelease];
}

- (id) initWithSpriteData:(NSDictionary *)spriteData andImage:(UIImage*)img;
{
    if ( self = [super init] )
    {
        self.animationLayer = [CAWSpriteCoreLayer layer];
        [self addSublayer:self.animationLayer];
        [self.animationLayer setSpriteData:spriteData andImage:img];
    }
    return self;
}

- (void)removeFromSuperlayer {
    [self.sublayers makeObjectsPerformSelector:@selector(removeFromSuperlayer)];
    self.sublayers = nil;
    self.animationLayer = nil;

    [super removeFromSuperlayer];
}

- (void)setSpriteData:(NSDictionary *)spriteData andImage:(UIImage*)img
{
    [self.animationLayer setSpriteData:spriteData andImage:img];
}

- (void)playAnimation:(NSString*) frameNames withRate:(float)frameRate andRepeat:(int)repeatCount
{
    [self.animationLayer playAnimation:frameNames withRate:frameRate andRepeat:repeatCount];
}

- (void)playAnimation:(NSString*) frameNames withRate:(float)frameRate
{
    [self.animationLayer playAnimation:frameNames withRate:frameRate andRepeat:0];
}

- (void)showFrame:(NSString*)frameName
{
    [self.animationLayer showFrame:frameName];
}

- (void)pause
{
    [self.animationLayer pause];
}

- (void)resume
{
    [self.animationLayer resume];
}

- (void)stop
{
    [self.animationLayer stop];
}

- (void)setShowLastFrame:(bool)show
{
    [self.animationLayer setShowLastFrame:show];
}


@end
