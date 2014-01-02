/*!
 * @file
 * Forward declares `boost::mpl11::repeat`.
 */

#ifndef BOOST_MPL11_FWD_REPEAT_HPP
#define BOOST_MPL11_FWD_REPEAT_HPP

namespace boost { namespace mpl11 {
    /*!
     * @ingroup datatypes
     *
     * Sequence containing copies of the given type.
     *
     * `repeat` is an infinite `RandomAccessSequence` and
     * `BidirectionalSequence`.
     */
    template <typename T>
    struct repeat;

    template <typename T>
    using repeat_t = repeat<T>;
}} // end namespace boost::mpl11

#endif // !BOOST_MPL11_FWD_REPEAT_HPP
