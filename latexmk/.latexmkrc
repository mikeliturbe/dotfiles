$pdf_previewer = 'start zathura';
$pdflatex = 'xelatex -synctex=1 --shell-escape %O %S';
$clean_ext = 'mtc*';

# Use a existing previewer if exists
$new_viewer_always = 0;

# Send signal to PDF reader to update. See man for different methods
$pdf_update_method = 2;

# If method is 2, specify the signal to send
$pdf_update_signal = 'SIGHUP';
