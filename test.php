<?php
function parse_order_id($des)
{
    $MEMO_PREFIX = 'NAPTIEN ';
    $re = '/'.$MEMO_PREFIX.'\d+/im';
    preg_match_all($re, $des, $matches, PREG_SET_ORDER, 0);
    if (count($matches) == 0 )
        return null;
    // Print the entire match result
    $orderCode = $matches[0][0];
    $prefixLength = strlen($MEMO_PREFIX);
    $orderId = intval(substr($orderCode, $prefixLength ));
    return $orderId ;
}
echo parse_order_id('MBVCB.1125198618.077619.NAPTIEN 7.C T tu 0501000242236 HUYNH NGOC SON t oi 19036047952013 HUYNH NGOC SON (T ECHCOMBANK) Ky thuong Viet Nam');