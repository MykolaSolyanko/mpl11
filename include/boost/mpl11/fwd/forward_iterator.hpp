/*!
 * @file
 * Forward declares `boost::mpl11::ForwardIterator`.
 */

#ifndef BOOST_MPL11_FWD_FORWARD_ITERATOR_HPP
#define BOOST_MPL11_FWD_FORWARD_ITERATOR_HPP

#include <boost/mpl11/fwd/comparable.hpp>
#include <boost/mpl11/fwd/equal.hpp>
#include <boost/mpl11/fwd/integral_c.hpp>


namespace boost { namespace mpl11 {
    /*!
     * @defgroup iterator_intrinsics Iterator intrinsics
     * @ingroup intrinsics
     *
     * Intrinsics forming the essential interface of iterators.
     */

    /*!
     * @ingroup concepts
     *
     * %Type representing a positional reference to an element of a sequence.
     *
     * A `ForwardIterator` allows accessing the element through a dereference
     * operation, and provides a way to obtain an iterator to the next element
     * in the sequence.
     *
     *
     * ## Refinement of
     * `Comparable`
     *
     *
     * ## Notation
     * | Expression | Description
     * | ---------- | -----------
     * | `I`, `J`   | `ForwardIterator`s
     * | `N`        | A positive `IntegralConstant`
     *
     *
     * ## Definitions
     * - `I` is dereferenceable if `deref<I>::type` is a well-defined
     *   expression.
     *
     * - An iterator is past-the-end if it points beyond the last element of
     *   a sequence; past-the-end iterators are non-dereferenceable.
     *
     * - `I` is incrementable if there is a "next" iterator, that is, if
     *   `next<I>::type` is a well-defined expression; past-the-end iterators
     *   are not incrementable.
     *
     * - `J` is reachable from `I` if, after a finite number of recursive
     *   applications of `next` to `I`, `I` is equal to `J`.
     *
     * - The notation [`I`, `J`) refers to a range of iterators beginning
     *   with `I` and up to but not including `J`.
     *
     * - The range [`I`, `J`) is a valid range if `J` is reachable from `I`.
     *
     *
     * ## Valid expressions
     * | Expression             | %Type
     * | ----------             | ----
     * | `deref<I>::type`       | Any type
     * | `next<I>::type`        | A `ForwardIterator`
     * | `distance<I, J>`       | An `IntegralConstant`
     * | `advance<I, N>::type`  | A `ForwardIterator`
     *
     *
     * ## Invariants
     * - `I` and `J` are equal if and only if they are pointing to the same
     *   element.
     *
     * - If `I` is dereferenceable and `J` is equal to `I`, then `J` is
     *   dereferenceable as well.
     *
     * - If `I` and `J` are equal and dereferenceable, then `deref<I>::type`
     *   and `deref<J>::type` are exactly the same type.
     *
     * - If `I` is incrementable and `J` is equal to `I`, then `J` is
     *   incrementable as well.
     *
     * - If `I` and `J` are equal and incrementable, then `next<I>::type` and
     *   `next<J>::type` are equal.
     */
    struct ForwardIterator : Comparable {

#ifdef BOOST_MPL11_DOXYGEN_INVOKED
        //! This operation must be provided by the user.
        template <typename Iterator>
        struct next_impl;

        //! This operation must be provided by the user.
        template <typename Iterator>
        struct deref_impl;
#endif

        /*!
         * Performs `N::value` applications of `mpl11::next` to `Iterator`.
         *
         *
         * @note
         * A static assertion is triggered if `N::value` is negative.
         */
        template <typename Iterator, typename N>
        struct advance_impl;

        /*!
         * Counts the number of applications of `mpl11::next` required
         * for `First` to become equal to `Last`.
         */
        template <
            typename First, typename Last,
            typename Distance = size_t<0>,
            bool = equal<First, Last>::value
        >
        struct distance_impl;
    };
}} // end namespace boost::mpl11

#endif // !BOOST_MPL11_FWD_FORWARD_ITERATOR_HPP