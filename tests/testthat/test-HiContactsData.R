context("test-HiContactsData")

test_that("HiContactsData function works for yeast_wt", {
    expect_equal({
        s <- HiContactsData(sample = 'yeast_wt', format = 'cool')
        methods::is(s, "character")
    }, TRUE)
    expect_equal({
        s <- HiContactsData(sample = 'yeast_wt', format = 'cool')
        file.exists(s)
    }, TRUE)
})

test_that("HiContactsDataFiles", {
    expect_equal({
        s <- HiContactsDataFiles()
        methods::is(s, "data.frame")
    }, TRUE)
})
