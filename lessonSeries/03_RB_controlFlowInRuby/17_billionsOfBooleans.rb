# test_1 should be true
test_1 = !(false & true) && true

# test_2 = should be true
test_2 = (true || true) && (!false && true)

# test_3 = should be false
test_3 = !(!true || true) || (false && true)