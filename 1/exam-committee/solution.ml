type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam v1 v2 v3 = if(v1 = StrongReject || v2 = StrongReject || v3 = StrongReject) then false else
match v1, v2, v3 with
| WeakReject, WeakReject, v3 -> false
| WeakReject, v2, WeakReject -> false
| v1, WeakReject, WeakReject -> false
|_-> true;;