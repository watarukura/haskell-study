-- main = do
--     print "Hello, World!"

main = do
    print "Who is the email for?"
    recipient <- getLine 
    print "What is the Title?"
    title <- getLine 
    print "Who is the Author?"
    author <- getLine 
    print (createEmail recipient title author)