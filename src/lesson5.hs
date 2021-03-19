-- クイックチェック5-1
-- ifEven myFunction x = if even x
--                       then myFunction x
--                       else x
-- genIfXEven f x = (\f -> ifEven f x)

getRequestUrl host apikey resource id = host ++
                                        "/" ++
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apikey

exampleUrlBuilder = getRequestUrl "http://example.com"

genApiRequestBuilder hostBuilder = hostBuilder

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "i337hAsk311"

myExampleUrlBuilder2 = genApiRequestBuilder exampleUrlBuilder "i337hAsk311" "book"

add4 a b c d = a + b + c + d
