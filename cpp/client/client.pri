QT += network

HEADERS += \
# Models
    $${PWD}/OAIRetrieveArtworkById_200_response.h \
    $${PWD}/OAISearchArtworks_200_response.h \
    $${PWD}/OAISearchArtworks_200_response_artworks_inner.h \
# APIs
    $${PWD}/OAIArtApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h \
    $${PWD}/OAIServerConfiguration.h \
    $${PWD}/OAIServerVariable.h \
    $${PWD}/OAIOauth.h

SOURCES += \
# Models
    $${PWD}/OAIRetrieveArtworkById_200_response.cpp \
    $${PWD}/OAISearchArtworks_200_response.cpp \
    $${PWD}/OAISearchArtworks_200_response_artworks_inner.cpp \
# APIs
    $${PWD}/OAIArtApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp \
    $${PWD}/OAIOauth.cpp
