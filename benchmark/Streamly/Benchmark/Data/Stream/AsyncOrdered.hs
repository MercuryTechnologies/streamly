{-# LANGUAGE FlexibleContexts #-}
-- |
-- Module      : Main
-- Copyright   : (c) 2018 Composewell Technologies
--
-- License     : BSD3
-- Maintainer  : streamly@composewell.com

import Stream.AsyncCommon (allBenchmarks)
import Streamly.Benchmark.Common (runWithCLIOpts, defaultStreamSize)

import qualified Streamly.Internal.Data.Stream.Async as Async

moduleName :: String
moduleName = "Data.Stream.AsyncOrdered"

-------------------------------------------------------------------------------
-- Main
-------------------------------------------------------------------------------

main :: IO ()
main =
    runWithCLIOpts defaultStreamSize (allBenchmarks moduleName Async.ordered)