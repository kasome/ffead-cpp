
file(GLOB sources
    "include/*.h"
    "src/*.cpp"
)

include_directories("${CMAKE_SOURCE_DIR}/web/peer-server/include")
add_library(peer_server SHARED ${sources})
set_property(TARGET peer_server PROPERTY POSITION_INDEPENDENT_CODE ON)
target_link_libraries(peer_server ffead-modules ffead-framework ${HAVE_CURLLIB} ${HAVE_SSLLIB} ${HAVE_MEMCACHEDLIB} ${HAVE_ODBCLIB} ${HAVE_MONGOCLIB} ${HAVE_BSONLIB} ${HAVE_ZLIB} ${HAVE_CRYPTOLIB})
