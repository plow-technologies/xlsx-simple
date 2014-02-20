{-# LANGUAGE OverloadedStrings #-}
module Xlsx.Simple where

import Xlsx.Simple.Internal

import Data.Time
import Codec.Xlsx
import Codec.Xlsx.Writer
-- import Data.ByteString.Lazy hiding (replicate, length)
import Data.Text hiding (replicate, length)

writeXlsxFile :: FilePath -> Text -> [[CellData]] -> IO ()
writeXlsxFile fname sName= (writeXlsxStyles fname styles).(:[]).(fcn sName)
  where
    fcn :: Text -> [[CellData]] -> Worksheet
    fcn sheetName cellDataListList = fromList sheetName colWidth rowH (fmap (fmap Just) cellDataListList) (replicate colCount "")
        where colWidth = (replicate colCount xDfltColWidth)
              colCount = length cellDataListList 
              rowH = xDfltRowHeight 



-- |Default Header size 12 default normal size 10 



bHText :: Text -> CellData
bHText = xText 13

iHText :: Text -> CellData
iHText = xText 14

nHText :: Text -> CellData
nHText = xText 12




-- | Coding  <style> [<color>] <header or normal>


emptyCell :: CellData
emptyCell = bbText ""

bbText  :: Text -> CellData                               
bbText  = xText 55                                                            
ibText  :: Text -> CellData            
ibText  = xText 56                                                            
nbText  :: Text -> CellData            
nbText  = xText 45                
bgrText :: Text -> CellData            
bgrText = xText 46                
igrText :: Text -> CellData            
igrText = xText 47                
ngrText :: Text -> CellData            
ngrText = xText 48                
brText  :: Text -> CellData            
brText  = xText 49                
irText  :: Text -> CellData            
irText  = xText 50                
nrText  :: Text -> CellData           
nrText  = xText 51                
bgText  :: Text -> CellData           
bgText  = xText 52                
igText  :: Text -> CellData           
igText  = xText 53                
inText  :: Text -> CellData            
inText  = xText 45           

bbDouble  :: Double -> CellData 
bbDouble  = xDouble 55          
ibDouble  :: Double -> CellData 
ibDouble  = xDouble 56          
nbDouble  :: Double -> CellData 
nbDouble  = xDouble 45          
bgrDouble :: Double -> CellData 
bgrDouble = xDouble 46          
igrDouble :: Double -> CellData 
igrDouble = xDouble 47          
ngrDouble :: Double -> CellData 
ngrDouble = xDouble 48          
brDouble  :: Double -> CellData 
brDouble  = xDouble 49          
irDouble  :: Double -> CellData 
irDouble  = xDouble 50          
nrDouble  :: Double -> CellData 
nrDouble  = xDouble 51          
bgDouble  :: Double -> CellData 
bgDouble  = xDouble 52          
igDouble  :: Double -> CellData 
igDouble  = xDouble 53          
inDouble  :: Double -> CellData 
inDouble  = xDouble 45



bbDate  :: LocalTime -> CellData 
bbDate  = xDate 11               
ibDate  :: LocalTime -> CellData 
ibDate  = xDate 12               
nbDate  :: LocalTime -> CellData 
nbDate  = xDate 13               
bgrDate :: LocalTime -> CellData 
bgrDate = xDate 14               
igrDate :: LocalTime -> CellData 
igrDate = xDate 15               
ngrDate :: LocalTime -> CellData 
ngrDate = xDate 16               
brDate  :: LocalTime -> CellData 
brDate  = xDate 17               
irDate  :: LocalTime -> CellData 
irDate  = xDate 18               
nrDate  :: LocalTime -> CellData 
nrDate  = xDate 19               
bgDate  :: LocalTime -> CellData 
bgDate  = xDate 20               
igDate  :: LocalTime -> CellData 
igDate  = xDate 21               
inDate  :: LocalTime -> CellData 
inDate  = xDate 22




































































 
