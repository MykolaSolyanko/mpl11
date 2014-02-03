/*!
 * @file
 * Contains unit tests for the @ref Field typeclass.
 */

#include <boost/mpl11/field.hpp>

#include <boost/mpl11/core.hpp>
#include <boost/mpl11/detail/std_is_same.hpp>
#include <boost/mpl11/functional.hpp>


using namespace boost::mpl11;
using detail::std_is_same;

///////////////////////////
// Test method dispatching
///////////////////////////
struct Archetype1 { template <typename> using from = quote<id>; };
struct archetype1 { struct type { using mpl_datatype = Archetype1; }; };

struct Archetype2;
struct archetype2 { struct type { using mpl_datatype = Archetype2; }; };

struct quot_tag;
struct recip_tag;

namespace boost { namespace mpl11 {
    template <>
    struct common_datatype<Archetype1, Archetype2> {
        using type = Archetype1;
    };

    template <>
    struct Field<Archetype1> {
        template <typename, typename>
        struct quot_impl { using type = quot_tag; };

        template <typename>
        struct recip_impl { using type = recip_tag; };
    };
}} // end namespace boost::mpl11

static_assert(std_is_same<
    quot<archetype1, archetype1>::type,
    quot_tag
>::value, "");

static_assert(std_is_same<
    quot<archetype1, archetype2>::type,
    quot_tag
>::value, "");

static_assert(std_is_same<
    quot<archetype2, archetype1>::type,
    quot_tag
>::value, "");


static_assert(std_is_same<
    recip<archetype1>::type,
    recip_tag
>::value, "");


int main() { }
