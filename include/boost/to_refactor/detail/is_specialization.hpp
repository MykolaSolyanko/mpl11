/*!
 * @file
 * Defines `boost::mpl11::detail::is_specialization`.
 */

#ifndef BOOST_MPL11_DETAIL_IS_SPECIALIZATION_HPP
#define BOOST_MPL11_DETAIL_IS_SPECIALIZATION_HPP

namespace boost { namespace mpl11 { namespace detail {
    /*!
     * @ingroup details
     *
     * Returns whether a type is a template specialization.
     *
     *
     * @warning
     * Templates with non-type or template template parameters are
     * not supported.
     */
    template <typename T>
    struct is_specialization;
}}} // end namespace boost::mpl11::detail


#include <boost/mpl11/integral_c.hpp>


namespace boost { namespace mpl11 { namespace detail {
    template <typename T>
    struct is_specialization
        : false_
    { };

    template <template <typename ...> class T, typename ...X>
    struct is_specialization<T<X...>>
        : true_
    { };
}}} // end namespace boost::mpl11::detail

#endif // !BOOST_MPL11_DETAIL_IS_SPECIALIZATION_HPP