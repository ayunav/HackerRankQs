//
//  MergeTwoSortedLists.cpp
//  AVLinkedListHackerRankQs
//
//  Created by Ayuna Vogel on 3/18/16.
//  Copyright © 2016 Ayuna Vogel. All rights reserved.
//

#include <stdio.h>

// MERGE TWO SORTED LINKED LISTS https://www.hackerrank.com/challenges/merge-two-sorted-linked-lists

/*
 Merge two sorted lists A and B as one linked list
*/

// Node is defined as
struct Node {
    int data;
    struct Node *next;
};

// SOLUTION 

Node* MergeLists(Node *headA, Node *headB) {
  
    Node *nodeC = NULL;
    
    // base case
    if (headA == NULL) {
        return headB;
    } else if (headB == NULL) {
        return headA;
    }
    
    if (headA->data <= headB->data) {
        nodeC = headA;
        nodeC->next = MergeLists(headA->next, headB);
    } else if (headA->data > headB->data) {
        nodeC = headB;
        nodeC->next = MergeLists(headA, headB->next);
    }
    
    return nodeC;
}
