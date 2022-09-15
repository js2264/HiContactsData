context("test-HiContactsData")

test_that("HiContactsData function works for yeast_wt", {
    expect_equal({
        s <- HiContactsData(sample = 'yeast_wt', format = 'cool')
        isTRUE(nzchar(s, keepNA = TRUE))
    }, TRUE)
    expect_equal({
        s <- HiContactsData(sample = 'yeast_wt', format = 'mcool')
        isTRUE(nzchar(s, keepNA = TRUE))
    }, TRUE)
})
