#import "WMFArticle+Extensions.h"

@implementation WMFArticle (Extensions)

- (nullable NSURL *)URL {
    NSString *key = self.key;
    if (!key) {
        return nil;
    }
    return [NSURL URLWithString:key];
}

- (nullable NSURL *)thumbnailURL {
    NSString *thumbnailURLString = self.thumbnailURLString;
    if (!thumbnailURLString) {
        return nil;
    }
    return [NSURL URLWithString:thumbnailURLString];
}

- (void)setThumbnailURL:(NSURL *)thumbnailURL {
    self.thumbnailURLString = thumbnailURL.absoluteString;
}

- (nullable CLLocation *)location {
    return [[CLLocation alloc] initWithLatitude:(CLLocationDegrees)self.latitude longitude:(CLLocationDegrees)self.longitude];
}

- (void)setLocation:(CLLocation *)location {
    self.latitude = (double)location.coordinate.latitude;
    self.longitude = (double)location.coordinate.longitude;
}

- (NSArray<NSNumber *> *)pageViewsSortedByDate {
    return self.pageViews.wmf_pageViewsSortedByDate;
}

@end