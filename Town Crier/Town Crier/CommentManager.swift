//
//  CommentManager.swift
//  Town Crier
//
//  Created by Lou Oriondo on 11/5/14.
//  Copyright (c) 2014 4800. All rights reserved.
//

import UIKit

var commentMgr: CommentManager = CommentManager();

struct comment {
    var desc = "No comments."
}

class CommentManager: NSObject {
    
    var comments = [comment]()
    
    func addComment(c: String) {
        comments.append(comment(desc: c))
    }
    
}
