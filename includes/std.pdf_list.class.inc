<?php
// *****************************************************************************
// Copyright 2003-2005 by A J Marston <http://www.tonymarston.net>
// Copyright 2006-2016 by Radicore Software Limited <http://www.radicore.org>
// *****************************************************************************
if (!class_exists('PDF')) {
    require_once 'std.pdf.class.inc';
} // if
class PDF_list extends PDF
{
    // ****************************************************************************
    // this subclass contains additional processing for the LIST view
    // ****************************************************************************
    function Header ()
    // print a line of column headings across the page
    {
        $this->new_page = true;  // indicate that a new page has started

        if (!is_True($this->print_header)) {
        	return;  // do not print a page header
        } // if

        if (isset($this->structure['title'])) {
            // format current row - NOT REQUIRED AS IT HAS ALREADY BEEN DONE
            //$style_array = array();
            //$this->fieldarray = $this->dbobject->formatData($this->fieldarray, $style_array);
            // allow contents to be customised
            $this->fieldarray = $this->dbobject->_cm_ListView_header($this->fieldarray);
            // this code is in the parent class
            parent::header();
        } // if

        if (isset($this->structure['title']['body_gap'])) {
    	    $gap = $this->structure['title']['body_gap'];
    	} else {
    	    $gap = $this->millimeters2units(1);  // default is 1mm
    	} // if
    	if ($gap > 0) {
    		$this->setY($this->getY() + $gap);  // leave a gap under the title
        } // if

        // set print style for the column headings
        if (!isset($this->structure['head']['style'])) {
            $this->structure['head']['style'] = 'default';
        } // if

        $height  = 0;
        $halign  = 'Left';
        $valign  = 'Middle';
        $stretch = null;
        $draw    = null;
        $result = $this->setPrintStyle($this->structure['head']['style']);
        $count = extract($result, EXTR_IF_EXISTS);

        $this->total_width = 0;

        $print_array = array();
        foreach ($this->structure['body']['fields'] as $column => $columndata) {
            $columndata = array_change_key_case($columndata, CASE_LOWER);
            $fieldname  = key($columndata);
            $fieldlabel = $columndata[$fieldname];

            $cellspec = array();
            $cellspec['default_style'] = $this->structure['head']['style'];

            if (isset($this->structure['columns'][$column]['width'])) {
            	$cellspec['width'] = $this->structure['columns'][$column]['width'];
            } else {
                // default is width divided by number of columns
                $cellspec['width'] = $this->printable_width / count($this->structure['body']['fields']);
            } // if
            $this->total_width = $this->total_width + $cellspec['width'];

            $cellspec['text'] = getLanguageText($fieldlabel);

            $print_array[] = $cellspec;

        } // foreach

        $border = 1;
        $fill   = 1;
        $result = $this->printRow($print_array, __FUNCTION__, $border, $fill);  // print this row

        $this->new_page_fill = true;

        return;

    } // Header

// ****************************************************************************
} // end class
// ****************************************************************************

?>
