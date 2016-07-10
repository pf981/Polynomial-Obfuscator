####################################################################################################
#
# TITLE:       Create Polynomial Code
#
# DESCRIPTION: User generateObfuscatedCode() to generate obfuscated hello world code.
#
# USAGE:       cat(generateObfuscatedCode('Encode this string'))
#
# AUTHOR:      Paul Foster
#
####################################################################################################

if (!require('pacman'))
    install.packages('pacman')

pacman::p_load('polynom')

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
