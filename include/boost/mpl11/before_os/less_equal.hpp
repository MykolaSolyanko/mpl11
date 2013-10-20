/*!
 * @file
 * Defines `boost::mpl11::less_equal`.
 */

#ifndef BOOST_MPL11_LESS_EQUAL_HPP
#define BOOST_MPL11_LESS_EQUAL_HPP

#include <boost/mpl11/fwd/less_equal.hpp>

#include <boost/mpl11/and.hpp>
#include <boost/mpl11/dispatch.hpp>
#include <boost/mpl11/less.hpp>
#include <boost/mpl11/not.hpp>


namespace boost { namespace mpl11 {
    template <typename T1, typename T2, typename ...Tn>
    struct dispatch<tag::less_equal, T1, T2, Tn...>
        : and_<
            less_equal<T1, T2>,
            less_equal<T2, Tn...>
        >
    { };

    template <typename T1, typename T2>
    struct dispatch<tag::less_equal, T1, T2>
        : not_<less<T2, T1>>
    { };
}} // end namespace boost::mpl11

#endif // !BOOST_MPL11_LESS_EQUAL_HPP
