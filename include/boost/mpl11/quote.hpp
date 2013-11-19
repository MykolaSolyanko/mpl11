/*!
 * @file
 * Defines `boost::mpl11::quote`.
 */

#ifndef BOOST_MPL11_QUOTE_HPP
#define BOOST_MPL11_QUOTE_HPP

#include <boost/mpl11/fwd/quote.hpp>


namespace boost { namespace mpl11 {
    template <template <typename ...> class F>
    struct quote {
        template <typename ...Args>
        struct apply
            : F<Args...>
        { };
    };
}} // end namespace boost::mpl11

#endif // !BOOST_MPL11_QUOTE_HPP