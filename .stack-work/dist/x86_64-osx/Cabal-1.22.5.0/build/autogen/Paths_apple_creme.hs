module Paths_apple_creme (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/richardschmidt/Code/Haskell/apple-creme/.stack-work/install/x86_64-osx/lts-6.13/7.10.3/bin"
libdir     = "/Users/richardschmidt/Code/Haskell/apple-creme/.stack-work/install/x86_64-osx/lts-6.13/7.10.3/lib/x86_64-osx-ghc-7.10.3/apple-creme-0.1.0.0-9sTaLGmQFo8DL3hBTU5Vhy"
datadir    = "/Users/richardschmidt/Code/Haskell/apple-creme/.stack-work/install/x86_64-osx/lts-6.13/7.10.3/share/x86_64-osx-ghc-7.10.3/apple-creme-0.1.0.0"
libexecdir = "/Users/richardschmidt/Code/Haskell/apple-creme/.stack-work/install/x86_64-osx/lts-6.13/7.10.3/libexec"
sysconfdir = "/Users/richardschmidt/Code/Haskell/apple-creme/.stack-work/install/x86_64-osx/lts-6.13/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "apple_creme_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "apple_creme_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "apple_creme_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "apple_creme_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "apple_creme_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
