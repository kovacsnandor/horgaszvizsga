select * from tartalom;


#horgaszvizsgaKonyv -> get_HorgaszvizsgaKonyv
SELECT 
        FejezetId, FejezetSzint, FejezetSzam, 
        FejezetCim, KepFile, Meret, 
        Suly, TilalmiIdoszak, MeretKorlat, 
        DarabKorlatos, Foghatosag, SzovegHtml FROM tartalom
  WHERE FejezetId > 1
  ORDER BY FejezetId;


#halKartyak -> get_HalKartyak
SELECT 
      FejezetId, FejezetSzint, FejezetSzam, 
      FejezetCim, KepFile, Meret, 
      Suly, TilalmiIdoszak, MeretKorlat, 
      DarabKorlatos, Foghatosag, SzovegHtml from tartalom
  WHERE KepFile IS NOT NULL
  ORDER BY FejezetCim;

#halInfoById/:id -> get_HalInfoById
SELECT
      FejezetId, FejezetSzint, FejezetSzam, 
      FejezetCim, KepFile, Meret, 
      Suly, TilalmiIdoszak, MeretKorlat, 
      DarabKorlatos, Foghatosag, SzovegHtml
FROM tartalom
WHERE FejezetId = 44
ORDER BY FejezetCim;

#halInfoByLikeText/:likeText -> get_HalInfoByLikeText
SELECT
      FejezetId, FejezetSzint, FejezetSzam, 
      FejezetCim, KepFile, Meret, 
      Suly, TilalmiIdoszak, MeretKorlat, 
      DarabKorlatos, Foghatosag, SzovegHtml
FROM tartalom
WHERE FejezetCim like '%ponty%' or SzovegHtml like '%ponty%'
ORDER BY FejezetCim;

