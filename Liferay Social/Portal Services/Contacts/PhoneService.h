//
//  PhoneService.h
//  Liferay Social
//
//	Bruno Farache
//

#import "BaseService.h"
#import "PhoneModel.h"

@interface PhoneService : BaseService

+ (NSArray *)getPhones:(long)contactId;

@end