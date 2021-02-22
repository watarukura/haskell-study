-- ifEvenInc n = if even n
--               then n + 1
--               else n


-- ifEvenDouble n = if even n
--                  then n * 2
--                  else n

-- ifEvenSquare n = if even n
--                  then n^2
--                  else n

ifEven myFunction x = if even x
                      then myFunction x
                      else x

inc n = n + 1
double n = n * 2
square n = n^2

ifEvenInc = ifEven inc
ifEvenDouble = ifEven double
ifEvenSqueare = ifEven square

-- ifEven (\x -> x^3) 6

author = ("Will", "Kurt")

names = [("Ian", "Curtis"),
         ("Bernard", "Sumner"),
         ("Peter", "Hook"),
         ("Stephen", "Morris")]

-- compareLastNames name1 name2 = if lastName1 > lastName2
--                                then GT 
--                                else if lastName1 < lastName2
--                                     then LT 
--                                     else EQ 
--     where lastName1 = snd name1
--           lastName2 = snd name2
compareLastNames name1 name2 = compare lastName1 lastName2
    where lastName1 = snd name1
          lastName2 = snd name2

-- compareLastNames name1 name2
--   | lastName1 > lastName2 = GT
--   | lastName1 < lastName2 = LT
--   | otherwise = EQ
--   where
--       lastName1 = snd name1
--       lastName2 = snd name2
-- compareFirstNames name1 name2 = if firstName1 > firstName2
--                                then GT
--                                else if firstName1 < firstName2
--                                     then LT
--                                     else EQ
--     where firstName1 = fst name1
--           firstName2 = fst name2
compareFirstNames name1 name2
  | firstName1 > firstName2 = GT
  | firstName1 < firstName2 = LT
  | otherwise = EQ
  where
      firstName1 = fst name1
      firstName2 = fst name2

-- addressLetter name location = nameText ++ " - " ++ location
--     where nameText = fst name ++ " " ++ snd name
addressLetter name location = locationFunction name
    where locationFunction = getLocationFunction location

sfOffice name = if lastName < "L"
               then nameText
                    ++ " - PO Box 1234 - San Francisco, CA, 94111"
               else nameText
                    ++ " - PO Box 1010 - San Francisco, CA, 94109"
    where lastName = snd name
          nameText = fst name ++ " " ++ snd name

nyOffice name = nameText ++ ": PO Box 789 - New York, NY, 10013"
    where nameText = fst name ++ " " ++ snd name

renoOffice name = nameText ++ " - PO Box 456 - Reno, NV 89523"
    where nameText = snd name

dcOffice name = nameText ++ " - PO Box 9876 - Washington, DC, 000111"
    where nameText = fst name ++ " " ++ snd name ++ "Esq"

getLocationFunction location = case location of -- location の値を調べる case
    -- location がny の場合はnyOffice を返す
    "ny" -> nyOffice
    -- location がsf の場合はsfOffice を返す
    "sf" -> sfOffice
    -- location がreno の場合はrenoOffice を返す
    "reno" -> renoOffice
    -- location がdcの場合はdcOffice を返す
    "dc" -> dcOffice
    -- その他の場合は(_はワイルドカード)は汎用的な解を返す
    _ -> (\name -> fst name ++ " " ++ snd name)