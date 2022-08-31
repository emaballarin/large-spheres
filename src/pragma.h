// disable specific compiler warnings
#pragma once
#ifdef _MSC_VER
#pragma warning(disable: 4127) // conditional expression is constant
#pragma warning(disable: 4146) // unary minus operator applied to unsigned type
#pragma warning(disable: 4189) // local variable is initialized but not referenced
#pragma warning(disable: 4706) // assignment within conditional expression
#else
#pragma GCC diagnostic ignored "-Wimplicit-fallthrough"
#pragma GCC diagnostic ignored "-Wincompatible-pointer-types"

#endif

