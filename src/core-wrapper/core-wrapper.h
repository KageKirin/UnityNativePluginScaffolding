#ifndef CORE_WRAPPER_H
#define CORE_WRAPPER_H 1

#ifdef _WIN32
#define COREAPI __declspec(dllexport)
#else
#define COREAPI
#endif	//_WIN32

#if __cplusplus
extern "C" {
#endif	//__cplusplus
COREAPI void printHello();
COREAPI void printMessage(const char* message);
#if __cplusplus
}
#endif	//__cplusplus

#endif /* end of include guard: CORE_WRAPPER_H */
