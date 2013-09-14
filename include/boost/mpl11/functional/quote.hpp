/*!
 * @file
 * Defines `boost::mpl11::quote`.
 */

#ifndef BOOST_MPL11_FUNCTIONAL_QUOTE_HPP
#define BOOST_MPL11_FUNCTIONAL_QUOTE_HPP

#include <boost/mpl11/detail/either.hpp>
#include <boost/mpl11/identity.hpp>


namespace boost { namespace mpl11 {
    /*!
     * @ingroup functional
     *
     * Higher-order primitive wrapping a @ref Metafunction to create a
     * corresponding @ref MetafunctionClass.
     *
     * Specifically, `quote<F>::apply<Args...>::type` is equivalent to
     * `F<Args...>::type` if that expression is valid, and `F<Args...>`
     * otherwise.
     */
    template <template <typename ...> class F>
    struct quote {
        template <typename ...Args>
        struct apply
            : detail::either<
                F<Args...>,
                identity<F<Args...>>
            >
        { };
    };
}} // end namespace boost::mpl11

#endif // !BOOST_MPL11_FUNCTIONAL_QUOTE_HPP