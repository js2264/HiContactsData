context("test-HiContactsData")

test_that("HiContactsData function works for yeast_wt", {
    expect_equal({
        s <- HiContactsData(sample = 'yeast_wt', format = 'cool')
        isTRUE(nzchar(Sys.readlink(s), keepNA = TRUE))
    }, TRUE)
    expect_equal({
        s <- HiContactsData(sample = 'yeast_wt', format = 'mcool')
        isTRUE(nzchar(Sys.readlink(s), keepNA = TRUE))
    }, TRUE)
})

test_that("HiContactsDataFiles", {
    expect_equal({
        s <- HiContactsDataFiles()
        methods::is(s, "data.frame")
    }, TRUE)
})
