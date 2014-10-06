﻿/*
  Copyright (c) 2011-2013, HL7, Inc.
  All rights reserved.
  
  Redistribution and use in source and binary forms, with or without modification, 
  are permitted provided that the following conditions are met:
  
   * Redistributions of source code must retain the above copyright notice, this 
     list of conditions and the following disclaimer.
   * Redistributions in binary form must reproduce the above copyright notice, 
     this list of conditions and the following disclaimer in the documentation 
     and/or other materials provided with the distribution.
   * Neither the name of HL7 nor the names of its contributors may be used to 
     endorse or promote products derived from this software without specific 
     prior written permission.
  
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
  IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT 
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
  POSSIBILITY OF SUCH DAMAGE.
  

 * Generated on Fri, May 9, 2014 11:14+1000 for FHIR v0.0.81
 */
/*
 * Specific reactions to a substance
 */
#import "FHIRAdverseReaction.h"

#import "FHIRIdentifier.h"
#import "FHIRDateTime.h"
#import "FHIRResource.h"
#import "FHIRBoolean.h"
#import "FHIRAdverseReactionSymptomComponent.h"
#import "FHIRAdverseReactionExposureComponent.h"

#import "FHIRErrorList.h"

@implementation FHIRAdverseReaction

- (NSString *)date
{
    if(self.dateElement)
    {
        return [self.dateElement value];
    }
    return nil;
}

- (void )setDate:(NSString *)date
{
    if(date)
    {
        [self setDateElement:[[FHIRDateTime alloc] initWithValue:date]];
    }
    else
    {
        [self setDateElement:nil];
    }
}


- (NSNumber *)didNotOccurFlag
{
    if(self.didNotOccurFlagElement)
    {
        return [self.didNotOccurFlagElement value];
    }
    return nil;
}

- (void )setDidNotOccurFlag:(NSNumber *)didNotOccurFlag
{
    if(didNotOccurFlag)
    {
        [self setDidNotOccurFlagElement:[[FHIRBoolean alloc] initWithValue:didNotOccurFlag]];
    }
    else
    {
        [self setDidNotOccurFlagElement:nil];
    }
}


- (FHIRErrorList *)validate
{
    FHIRErrorList *result = [[FHIRErrorList alloc] init];
    
    [result addValidation:[super validate]];
    
    if(self.identifier != nil )
        for(FHIRIdentifier *elem in self.identifier)
            [result addValidationRange:[elem validate]];
    if(self.dateElement != nil )
        [result addValidationRange:[self.dateElement validate]];
    if(self.subject != nil )
        [result addValidationRange:[self.subject validate]];
    if(self.didNotOccurFlagElement != nil )
        [result addValidationRange:[self.didNotOccurFlagElement validate]];
    if(self.recorder != nil )
        [result addValidationRange:[self.recorder validate]];
    if(self.symptom != nil )
        for(FHIRAdverseReactionSymptomComponent *elem in self.symptom)
            [result addValidationRange:[elem validate]];
    if(self.exposure != nil )
        for(FHIRAdverseReactionExposureComponent *elem in self.exposure)
            [result addValidationRange:[elem validate]];
    
    return result;
}

@end