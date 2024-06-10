export STS_OS="Unknown"

case "$(uname -s)" in

Darwin)
    export STS_OS="MacOS"
    ;;
Linux)
    export STS_OS="Linux"
    ;;
CYGWIN* | MINGW32* | MSYS* | MINGW*)
    export STS_OS="Windows"
    ;;
*) ;;
esac
