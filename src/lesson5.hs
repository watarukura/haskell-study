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

genApiRequestBuilder hostBuilder apiKey = (\resouce id ->
                                            hostBuilder apiKey resouce id)

myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "i337hAsk311"

myExampleUrlBuilder2 = genApiRequestBuilder exampleUrlBuilder "i337hAsk311" "book"

add4 a b c d = a + b + c + d
addXto3 x = (\b c d ->
                add4 x b c d)
addXto2 x y = (\c d ->
                add4 x y c d)
