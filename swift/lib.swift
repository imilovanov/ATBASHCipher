/***********************************
 Use: "Hello World".encrypt
 "Hello World".encrypt.decrypt
 ***********************************/
import Foundation

extension String {
    var encrypt : String {
        let alphabet = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z".components(separatedBy: ",")
        var output = ""
        for i in self {
            if let index = alphabet.index(of: String(i).lowercased()) {
                output += alphabet[25 - index]
            } else {
                output += String(i)
            }
            
        }
        return output
    }
    var decrypt : String {
        return self.encrypt
    }
}
