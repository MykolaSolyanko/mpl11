/*!
 * @file
 * Contains unit tests for `boost::mpl11::and_` and `boost::mpl11::or_`.
 */

#include <boost/mpl11/logical.hpp>

#include <boost/mpl11/core.hpp>
#include <boost/mpl11/integer.hpp>


using namespace boost::mpl11;

template <typename T, typename F>
struct test_and_or {
    // test and_
    static_assert( and_<>::value, "");

    static_assert( and_<T>::value, "");
    static_assert(!and_<F>::value, "");

    static_assert( and_<T, T>::value, "");
    static_assert(!and_<T, F>::value, "");
    static_assert(!and_<F, T>::value, "");
    static_assert(!and_<F, F>::value, "");
    static_assert(!and_<F, undefined>::value, "");

    static_assert( and_<T, T, T>::value, "");
    static_assert(!and_<T, T, F>::value, "");
    static_assert(!and_<T, F, T>::value, "");
    static_assert(!and_<T, F, F>::value, "");
    static_assert(!and_<F, T, T>::value, "");
    static_assert(!and_<F, T, F>::value, "");
    static_assert(!and_<F, F, T>::value, "");
    static_assert(!and_<F, F, F>::value, "");
    static_assert(!and_<T, F, undefined>::value, "");
    static_assert(!and_<F, T, undefined>::value, "");
    static_assert(!and_<F, F, undefined>::value, "");


    // test or_
    static_assert(!or_<>::value, "");

    static_assert( or_<T>::value, "");
    static_assert(!or_<F>::value, "");

    static_assert( or_<T, T>::value, "");
    static_assert( or_<T, F>::value, "");
    static_assert( or_<F, T>::value, "");
    static_assert(!or_<F, F>::value, "");
    static_assert( or_<T, undefined>::value, "");

    static_assert( or_<T, T, T>::value, "");
    static_assert( or_<T, T, F>::value, "");
    static_assert( or_<T, F, T>::value, "");
    static_assert( or_<T, F, F>::value, "");
    static_assert( or_<F, T, T>::value, "");
    static_assert( or_<F, T, F>::value, "");
    static_assert( or_<F, F, T>::value, "");
    static_assert(!or_<F, F, F>::value, "");
    static_assert( or_<T, F, undefined>::value, "");
    static_assert( or_<F, T, undefined>::value, "");
    static_assert( or_<T, T, undefined>::value, "");
};

template <typename T, T v>
struct yes { struct type { static constexpr T value = v; }; };
struct no { struct type { static constexpr bool value = false; }; };

struct tests :
    test_and_or<yes<bool, true>, no>,
    test_and_or<yes<int, 1>, no>,
    test_and_or<yes<int, 2>, no>,

    // test integral_c specialization
    test_and_or<true_, false_>,
    test_and_or<int_<2>, false_>,
    test_and_or<int_<2>, int_<0>>,
    test_and_or<int_<2>, long_<0>>
{ };


int main() { }