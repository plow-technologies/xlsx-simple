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
bHText = xText 6

iHText :: Text -> CellData
iHText = xText 7

uHText :: Text -> CellData
uHText = xText 8

nHText :: Text -> CellData
nHText = xText 9




-- | Coding  <style> [<color>] <header or normal>


emptyCell :: CellData
emptyCell = bbText ""

bbText  :: Text -> CellData                               
bbText  = xText 10                                                            
ibText  :: Text -> CellData            
ibText  = xText 11                                                            
nbText  :: Text -> CellData            
nbText  = xText 12                
bgrText :: Text -> CellData            
bgrText = xText 13                
igrText :: Text -> CellData            
igrText = xText 14                
ngrText :: Text -> CellData            
ngrText = xText 15                
brText  :: Text -> CellData            
brText  = xText 16                
irText  :: Text -> CellData            
irText  = xText 17                
nrText  :: Text -> CellData           
nrText  = xText 18                
bgText  :: Text -> CellData           
bgText  = xText 19                
igText  :: Text -> CellData           
igText  = xText 20                
inText  :: Text -> CellData            
inText  = xText 21           

bbDouble  :: Double -> CellData 
bbDouble  = xDouble 10          
ibDouble  :: Double -> CellData 
ibDouble  = xDouble 11          
nbDouble  :: Double -> CellData 
nbDouble  = xDouble 12          
bgrDouble :: Double -> CellData 
bgrDouble = xDouble 13          
igrDouble :: Double -> CellData 
igrDouble = xDouble 14          
ngrDouble :: Double -> CellData 
ngrDouble = xDouble 15          
brDouble  :: Double -> CellData 
brDouble  = xDouble 16          
irDouble  :: Double -> CellData 
irDouble  = xDouble 17          
nrDouble  :: Double -> CellData 
nrDouble  = xDouble 18          
bgDouble  :: Double -> CellData 
bgDouble  = xDouble 19          
igDouble  :: Double -> CellData 
igDouble  = xDouble 20          
inDouble  :: Double -> CellData 
inDouble  = xDouble 21



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




































































 
