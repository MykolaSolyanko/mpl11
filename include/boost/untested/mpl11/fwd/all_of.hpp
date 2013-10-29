/*!
 * @file
 * Forward declares `boost::mpl11::all_of`.
 */

#ifndef BOOST_MPL11_FWD_ALL_OF_HPP
#define BOOST_MPL11_FWD_ALL_OF_HPP

#include <boost/mpl11/detail/doxygen_only.hpp>
#include <boost/mpl11/detail/optional.hpp>


namespace boost { namespace mpl11 {
    /*!
     * @ingroup algorithms
     *
     * Returns whether all the elements of a sequence satisfy a given
     * `Predicate`.
     *
     *
     * ### Semantics and default implementation
     *
     * Equivalent to
       @code
            none_of<
                Sequence,
                not_<apply_wrap<lambda<Predicate>::type, _1>>
            >
       @endcode
     */
    template <typename Sequence, typename Predicate = detail::optional>
    struct all_of BOOST_MPL11_DOXYGEN_ONLY(<Sequence, Predicate>);

    /*!
     * @ingroup algorithms
     *
     * Returns whether all the elements of a sequence are `true`-valued
     * boolean @ref IntegralConstant "Integral Constants".
     *
     *
     * ### Semantics and default implementation
     *
     * Equivalent to `all_of<Sequence, _1>`.
     */
    template <typename Sequence>
    struct all_of<Sequence>;
}} // end namespace boost::mpl11

#endif // !BOOST_MPL11_FWD_ALL_OF_HPP