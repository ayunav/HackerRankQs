//
//  main.m
//  AVLinkedListHackerRankQs
//
//  Created by Ayuna Vogel on 3/17/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

#import <Foundation/Foundation.h>

// ******* SOLUTIONS ONLY *******
// LINKS TO THE ORIGINAL QUESTIONS ON HACKER RANK ARE PROVIDED.

struct Node {
    int data;
    struct Node *next;
};

/*
 COMPARE TWO LINKED LISTS https://www.hackerrank.com/challenges/compare-two-linked-lists
 */

/*
 Compare two linked lists A and B
 Return 1 if they are identical and 0 if they are not.
 
 Node is defined as
 
 struct Node
 {
 int data;
 struct Node *next;
 }
 */


// ITERATIVE SOLUTION

int CompareLists(struct Node *headA, struct Node *headB) {
 
    if (headA == NULL && headB == NULL) {
        return 1;
    }
    
    while (headA!= NULL && headB != NULL) {
        
        if (headA-> data != headB->data) {
            return 0;
        }
        headA = headA->next;
        headB = headB->next;
    }
    return (headA == NULL && headB == NULL);
}

// RECURSIVE SOLUTION

int CompareListsRecursively(struct Node *headA, struct Node* headB){

    if (headA == NULL && headB == NULL) {
        return 1;
    }
    
    if (headA != NULL && headB != NULL) {
        return (headA->data == headB->data) && CompareListsRecursively(headA->next, headB->next);
    }
    return 0;
}



// MAIN FUNCTION

int main(int argc, const char * argv[]) {
    @autoreleasepool {

    
    }
    return 0;
}
