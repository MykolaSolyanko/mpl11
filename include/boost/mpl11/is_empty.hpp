/*!
 * @file
 * Defines `boost::mpl11::is_empty`.
 */

#ifndef BOOST_MPL11_IS_EMPTY_HPP
#define BOOST_MPL11_IS_EMPTY_HPP

#include <boost/mpl11/begin.hpp>
#include <boost/mpl11/detail/tag_dispatched.hpp>
#include <boost/mpl11/end.hpp>
#include <boost/mpl11/is_same.hpp>


namespace boost { namespace mpl11 {
namespace is_empty_detail {
struct default_is_empty {
    template <typename, typename Sequence>
    struct apply
        : is_same<
            typename begin<Sequence>::type,
            typename end<Sequence>::type
        >
    { };
};
} // end namespace is_empty_detail

namespace tag { struct is_empty; }

/*!
 * Return whether the sequence is empty.
 *
 * The default implementation is equivalent to
 * `is_same<begin<Sequence>::type, end<Sequence>::type>`.
 *
 * @warning
 * This metafunction replaces `mpl::empty` from the original MPL.
 */
template <typename Sequence>
struct is_empty
    : detail::tag_dispatched<tag::is_empty, Sequence>::template
      with_default<is_empty_detail::default_is_empty>
{ };
}} // end namespace boost::mpl11

#endif // !BOOST_MPL11_IS_EMPTY_HPP