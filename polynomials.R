####################################################################################################
#
# TITLE:       Polynomials
#
# DESCRIPTION:
#
# AUTHOR:      Paul Foster
#
####################################################################################################

if (!require('pacman'))
    install.packages('pacman')

pacman::p_load('magrittr',
               'polynom')


## Generate the Polynomial


strToAscii <- function(x) {
    strtoi(charToRaw(x), 16L)
}

asciiToStr <- function(n) {
    rawToChar(as.raw(n))
}

raw_str <- 'Hello World!'
str_ascii <- strToAscii(raw_str)
asciiToStr(str_ascii)

result <- poly.calc(x=seq_len(nchar(raw_str)), y=str_ascii)

paste0(coef(result), collapse=', ')

poly_func <- polynomial(coef=c(55920, -163635.629978355, 196773.744702381, -130574.01542328, 53823.0885774912, -14611.7727375441, 2686.31185185185, -336.552189153439, 28.3069527116402, -1.52900958994709, 0.0479155643738977, -0.000662077120410454))

as.function(poly_func)(seq_len(12)) %>%
    round %>%
    asciiToStr




## Final Obfuscated Code ####


as.function(polynomial(coef=c(55920, -163635.629978355, 196773.744702381, -130574.01542328, 53823.0885774912, -14611.7727375441, 2686.31185185185, -336.552189153439, 28.3069527116402, -1.52900958994709, 0.0479155643738977, -0.000662077120410454)))(seq_len(12)) %>%
    round %>%
    as.raw %>%
    rawToChar



## More Obfuscated ####


if (!require('pacman'))
    install.packages('pacman')

pacman::p_load('magrittr',
               'polynom')

polynomial(coef=c(55920,
                  -163635.629978355,
                  196773.744702381,
                  -130574.01542328,
                  53823.0885774912,
                  -14611.7727375441,
                  2686.31185185185,
                  -336.552189153439,
                  28.3069527116402,
                  -1.52900958994709,
                  0.0479155643738977,
                  -0.000662077120410454)) %>%
    predict(seq_len(12)) %>%
    round %>%
    as.raw %>%
    rawToChar %>%
    print

# http://www.wolframalpha.com/input/?i=55920+-+163635.629978355*x+%2B+196773.744702381*x%5E2+-+130574.01542328*x%5E3+%2B+++53823.0885774912*x%5E4+-+14611.7727375441*x%5E5+%2B+2686.31185185185*x%5E6+-+++336.552189153439*x%5E7+%2B+28.3069527116402*x%5E8+-+1.52900




## Code to Contruct Obfuscated Code ####


if (!require('pacman'))
    install.packages('pacman')

pacman::p_load('magrittr',
               'polynom')

strToAscii <- function(x) {
    strtoi(charToRaw(x), 16L)
}

generateObfuscatedCode <- function(raw_str='Hello World!') {
    ascii <- strToAscii(raw_str)
    result_poly <- poly.calc(x=seq_len(length(ascii)),
                             y=ascii)
    message(result_poly, digits=100)

    coef_str <- paste0(coef(result), collapse=',\n                  ')

    obfuscated_code_str <- paste0("
if (!require('pacman'))
    install.packages('pacman')

pacman::p_load('magrittr',
               'polynom')

polynomial(coef=c(", coef_str, ")) %>%
    predict(seq_len(", length(ascii), ")) %>%
    round %>%
    as.raw %>%
    rawToChar %>%
    print
    ")
    obfuscated_code_str
}


generateObfuscatedCode() %>%
    cat













































































