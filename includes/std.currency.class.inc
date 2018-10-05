<?php
// *****************************************************************************
// Copyright 2003-2005 by A J Marston <http://www.tonymarston.net>
// Copyright 2006-2018 by Radicore Software Limited <http://www.radicore.org>
// *****************************************************************************

class currency_class
{
    var $func_currency;         // currency of issuing party
    var $tran_currency;         // currency of receiving party
    var $exchange_rate;         // exchange rate from $func_currency to $tran_currency

    // ****************************************************************************
    // class constructor
    // ****************************************************************************
    function __construct ()
    {
        // nothing here

        return;

    } // __construct

    // ****************************************************************************
    function flip_currency($fieldarray, $columns, $scales)
    // flip values between two currencies for one or more columns
    // $fieldarray = associative array containing current data
    // $columns = an array of column names with a flag to append the currency code to the value
    {
        $pattern_id = getPatternId();

        if (empty($this->exchange_rate)) {
            $this->exchange_rate = 1;
        } // if

        if (!isset($_SESSION['display_foreign_currency'])) {
            $_SESSION['display_foreign_currency'] = false;
        } // if

        foreach ($columns as $name => $append_currency_code) {
            $scale = $scales[$name];
            if (preg_match('/^(output2|output4)/i', $pattern_id)) {
                // the CSV output will contain BOTH home and foreign currency values
                if ($fieldarray[$name] == 0) {
                    $fieldarray[$name]       = null;
                    $fieldarray[$name.'_tx'] = null;
                } else {
                    if ($this->func_currency == $this->tran_currency) {
                        //$fieldarray[$name.'_tx'] = null;
                    } else {
                        // currencies are different, so display transaction curency
                        $fieldarray[$name.'_tx'] = $this->tran_currency.' '.$fieldarray[$name.'_tx'];
                    } // if
                } // if
            } else {
                // display only one of the home or foreign currency values
                if ($_SESSION['display_foreign_currency'] === false) {
                    // all values are displayed in home/functional currency
                    $fieldarray['display_currency'] = $this->func_currency;
                    // format number with decimal places and thousands separator
                    $fieldarray[$name] = formatNumber($fieldarray[$name], $scale);
                } else {
                    // all values are displayed in foreign/transaction currency
                    $fieldarray['display_currency'] = $this->tran_currency;
                    $name_tx = $name.'_tx';  // use standard suffix of '_tx'
                    if (!empty($fieldarray[$name_tx]) AND $fieldarray[$name_tx] <> 0) {
                        // value has already been defined in foreign currency, so do not convert
                        $fieldarray[$name] = formatNumber($fieldarray[$name_tx], $scale);
                    } else {
                        // convert from HOME to FOREIGN currency
                        if (!empty($fieldarray[$name])) {
                            $fieldarray[$name] = number_unformat($fieldarray[$name]); // remove any thousands separator
                            $fieldarray[$name] = $fieldarray[$name] * $this->exchange_rate;
                            $fieldarray[$name] = number_format($fieldarray[$name], $scale, '.', ',');
                        } // if
                    } // if
                } // if
                if ($fieldarray[$name] == 0) {
                    $fieldarray[$name] = null;  // display blank instead of '0.00'
                } else {
                    // do we prepend currency code to the amount or not?
                    if (is_True($append_currency_code)) {
                        if ($this->tran_currency == $this->func_currency) {
                            // both currencies are the same, so the answer is NO
                        } else {
                            // actually, the curency_code is PREpended, not APpended
                            $fieldarray[$name] = $fieldarray['display_currency'].' '.$fieldarray[$name];
                        } // if
                    } // if
                } // if
            } // if
        } // foreach

        return $fieldarray;

    } // flip_currency

    // ****************************************************************************
    function _convert($value, $exchange_rate, $scale1, $scale2)
    // convert value using supplied exchange rate, then format using scale
    // $scale1 = default scale
    // $scale2 = alternative scale
    {
        $value = number_unformat($value);
        $value = $value * $exchange_rate;

        if (is_numeric($scale2)) {
            if ($scale2 == $scale1) {
                // no rounding necessary
            } else {
                $temp = round($value, $scale2);
                $value = $temp;
            } // if
        } // if

        $value = number_format($value, $scale1, '.', '');

        return $value;

    } // _convert

} // class: currency_class
?>
