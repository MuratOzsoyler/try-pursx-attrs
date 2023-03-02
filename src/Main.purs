module Main where

import Prelude

import Deku.DOM as D
import Deku.Pursx ((~~))
import Deku.Toplevel (runInBody)
import Effect (Effect)
import Type.Proxy (Proxy(..))

main :: Effect Unit
main = runInBody
  ( D.div_
      [
        -- patternCurlybrace_ ~~ {}
        -- patternSquarebracket_ ~~ {}
        -- patternVerticalbar_ ~~ {}
        -- imgAltNonASCII_ ~~ {}
        imgAltASCIIWorking_ ~~ {}
      ]
  )

patternCurlybrace_ = Proxy :: Proxy """<input type="text" pattern="a{1,3}" /> """
patternSquarebracket_ = Proxy :: Proxy """<input type="text" pattern="[a-z]" /> """
patternVerticalbar_ = Proxy :: Proxy """<input type="text" pattern="(a|b|c)" /> """
imgAltNonASCII_ = Proxy :: Proxy """<img alt="ĞÜŞİÖÇığüşiöç" />"""
imgAltASCIIWorking_ = Proxy :: Proxy """<img alt="GUSIOCigusioc" />""" -- works