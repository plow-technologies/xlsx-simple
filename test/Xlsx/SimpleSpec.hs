{-# LANGUAGE OverloadedStrings #-}
module Xlsx.SimpleSpec (main, spec) where

import Test.Hspec
import Xlsx.Simple
import Codec.Xlsx
import Xlsx.Simple.Internal
import Codec.Xlsx.Writer
import Data.Time
import Data.Time.LocalTime
import Control.Applicative

testFileName = "testD.xlsx" 

testSheetName = "testSheet" 


testBbtext   :: CellData                               
testBbtext  = bbText "testBbte"                                                            
testIbtext   :: CellData            
testIbtext  = ibText  "estIbtex"                                                           
testNbtext   :: CellData            
testNbtext  = nbText   "stNbtext"                
testBgrtext   :: CellData            
testBgrtext = bgrText  "stBgrtex"                
testIgrtext   :: CellData            
testIgrtext = igrText  "stIgrtex"                
testNgrtext   :: CellData            
testNgrtext = ngrText  "stNgrtex"                
testBrtext   :: CellData            
testBrtext  = brText   "stBrtext"                
testIrtext   :: CellData            
testIrtext  = irText   "stIrtext"                
testNrtext   :: CellData           
testNrtext  = nrText   "stNrtext"                
testBgtext   :: CellData           
testBgtext  = bgText   "stBgtext"                
testIgtext   :: CellData           
testIgtext  = igText   "stIgtext"                
testIntext   :: CellData            
testIntext  = inText   "stIntext"           

testBbdouble   :: CellData 
testBbdouble  = bbDouble 2.781828 
testIbdouble   :: CellData 
testIbdouble  = ibDouble 2.781828 
testNbdouble   :: CellData 
testNbdouble  = nbDouble 2.781828 
testBgrdouble  :: CellData 
testBgrdouble = bgrDouble 2.781828
testIgrdouble  :: CellData 
testIgrdouble = igrDouble 2.781828
testNgrdouble  :: CellData 
testNgrdouble = ngrDouble 2.781828
testBrdouble   :: CellData 
testBrdouble  = brDouble 2.781828 
testIrdouble   :: CellData 
testIrdouble  = irDouble 2.781828 
testNrdouble   :: CellData 
testNrdouble  = nrDouble 2.781828 
testBgdouble   :: CellData 
testBgdouble  = bgDouble 2.781828 
testIgdouble   :: CellData 
testIgdouble  = igDouble 2.781828 
testIndouble   :: CellData 
testIndouble  = inDouble 2.781828 

main :: IO ()
main = hspec spec

spec :: Spec
spec = do    

  describe "writeXlsxFile" $ do    
    it "should print test data to xlsx file and exit" $ do                               
      t <- getCurrentTime
      let sheet3 = testSheet3 <*> [utcToLocalTime (hoursToTimeZone (-6)) t]
      writeXlsxFile testFileName testSheetName ([testSheet] ++ [allNumStyles] ++ [testSheet2] ++ [sheet3])
      True `shouldBe` True





testSheet3 = [bbDate                 
             ,ibDate                 
             ,nbDate                 
             ,bgrDate                
             ,igrDate                
             ,ngrDate                
             ,brDate                 
             ,irDate                 
             ,nrDate                 
             ,bgDate                 
             ,igDate                 
             ,inDate ]



allStyles = xText <$> [ 1 .. 100] <*> ["Test text"]

allNumStyles = xDouble <$> [1 .. 100] <*> [1.1]

testSheet2 = allStyles

testSheet = [testBbtext 
            ,testBbtext 
            ,testIbtext 
            ,testIbtext 
            ,testNbtext
            ,testNbtext 
            ,testBgrtext
            ,testBgrtext
            ,testIgrtext
            ,testIgrtext
            ,testNgrtext
            ,testNgrtext
            ,testBrtext 
            ,testBrtext 
            ,testIrtext 
            ,testIrtext 
            ,testNrtext 
            ,testNrtext 
            ,testBgtext 
            ,testBgtext 
            ,testIgtext 
            ,testIgtext 
            ,testIntext 
            ,testIntext              
            ,testBbdouble  
            ,testBbdouble  
            ,testIbdouble  
            ,testIbdouble  
            ,testNbdouble  
            ,testNbdouble  
            ,testBgrdouble 
            ,testBgrdouble 
            ,testIgrdouble 
            ,testIgrdouble 
            ,testNgrdouble 
            ,testNgrdouble 
            ,testBrdouble  
            ,testBrdouble  
            ,testIrdouble  
            ,testIrdouble  
            ,testNrdouble  
            ,testNrdouble  
            ,testBgdouble  
            ,testBgdouble  
            ,testIgdouble  
            ,testIgdouble  
            ,testIndouble  
            ,testIndouble] ;
