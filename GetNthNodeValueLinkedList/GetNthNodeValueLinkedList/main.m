//
//  main.m
//  GetNthNodeValueLinkedList
//
//  Created by Ayuna Vogel on 3/22/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Node {
    int data;
    struct Node *next;
};

@interface LinkedList : NSObject

@property struct Node *head;

- (struct Node *)append:(int)value;
- (void)printList;

@end



@implementation LinkedList

- (struct Node *)append:(int)value {
    if (self.head == nil) {
        self.head = (struct Node*)malloc(sizeof(struct Node));
        self.head->data = value;
        self.head->next = nil;
    } else {
        struct Node *current = self.head;
        while (current->next != nil) {
            current = current->next;
        }
        struct Node *newNode = (struct Node*)malloc(sizeof(struct Node));
        current->next = newNode;
        newNode->data = value;
        newNode->next = nil;
    }
    return self.head;
}

- (void)printList {
    struct Node *temp = self.head;
    while (temp != nil) {
        printf(" %d", temp->data);
        temp = temp->next;
    }
    printf("\n");
}

@end


int getNthNodeValue(struct Node *head, int positionFromTail) {
    struct Node *ptr1 = head;
    struct Node *ptr2 = head;
    int count = 0;
    
    while (ptr1 != nil && count < positionFromTail) {
        ptr1 = ptr1->next;
        count++;
        printf("count is %d \n", count);
    }
    
    if (count != positionFromTail) {
        return 0;
    } else {
        while (ptr1 != nil) {
            ptr1 = ptr1->next;
            ptr2 = ptr2->next;
        }
    }

    printf("ptr2->data is %d \n\n", ptr2->data);
    return ptr2->data;
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LinkedList *list = [[LinkedList alloc]init];
        [list append:1];
        [list append:3];
        [list append:5];
        printf("List is \n");
        [list printList];
        
        
        getNthNodeValue(list.head, 3);
 
        
    }
    return 0;
}


