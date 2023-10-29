<?php
function customRotDecode($string, $shift) {
    $result = '';
    $length = strlen($string);
    for ($i = 0; $i < $length; $i++) {
        $char = $string[$i];
        if (ctype_alpha($char)) {
            $asciiOffset = ord(ctype_upper($char) ? 'A' : 'a');
            $decodedChar = chr(($asciiOffset + (ord($char) - $asciiOffset + $shift) % 26));
            $result .= $decodedChar;
        } else {
            $result .= $char;
        }
    }
    return $result;
}
$encodedString = "xqkwKBN{z0bib1wv_l3kzgxb3l_949in1i1}"; //encrypted.txt
for ($i = 1; $i <= 26; $i++) {
    $decodedString = customRotDecode($encodedString, $i);
    echo "Amount:". $i . " ". $decodedString . "<br>";
}
?>
