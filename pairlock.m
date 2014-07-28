#include <stdio.h>
#include <stdlib.h>
#include <CoreFoundation/CoreFoundation.h>
#include <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
    BOOL lock =YES;
    NSDictionary *attribute = [ NSDictionary dictionaryWithObject: [ NSNumber numberWithBool: lock ] forKey: NSFileImmutable ];
    [ [ NSFileManager defaultManager ] changeFileAttributes: attribute atPath: @"/var/root/Library/Lockdown/pair_records" ];
    [ [ NSFileManager defaultManager ] changeFileAttributes: attribute atPath: @"/var/root/Library/Lockdown/escrow_records" ];

    return 0;
}
