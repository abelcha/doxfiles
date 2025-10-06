complete -c "camelot" -l "version" -d "Show the version and exit." # global
complete -c "camelot" -s "q" -l "quiet" -d "Suppress logs and warnings." # global
complete -c "camelot" -s "p" -l "pages" -d "Comma-separated page numbers. Example: 1,3,4 or 1,4-end or all." # global
complete -c "camelot" -l "parallel" -d "Read pdf pages in parallel using all CPU cores." # global
complete -c "camelot" -s "pw" -l "password" -d "Password for decryption." # global
complete -c "camelot" -s "o" -l "output" -d "Output file path." # global
complete -c "camelot" -s "f" -l "format" -d "Output file format." -xa "csv excel html json markdown sqlite" # global
complete -c "camelot" -s "z" -l "zip" -d "Create ZIP archive." # global
complete -c "camelot" -s "split" -l "split_text" -d "Split text that spans across multiple cells." # global
complete -c "camelot" -s "flag" -l "flag_size" -d "Flag text based on font size. Useful to detect super/subscripts." # global
complete -c "camelot" -s "strip" -l "strip_text" -d "Characters that should be stripped from a string before assigning it to a cell." # global
complete -c "camelot" -s "M" -l "margins" -d "PDFMiner char_margin, line_margin and word_margin." # global
complete -c "camelot" -l "help" -d "Show this message and exit." # global
complete -f -c "camelot" -n "__fish_use_subcommand" -a "hybrid" -d "Combines the strengths of both the Network and the Lattice..." # sub
complete -f -c "camelot" -n "__fish_use_subcommand" -a "lattice" -d "Use lines between text to parse the table." # sub
complete -f -c "camelot" -n "__fish_use_subcommand" -a "network" -d "Use text alignments to parse the table." # sub
complete -f -c "camelot" -n "__fish_use_subcommand" -a "stream" -d "Use spaces between text to parse the table." # sub
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "q" -l "quiet" -d "Suppress logs and warnings." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "p" -l "pages" -d "Comma-separated page numbers. Example: 1,3,4 or 1,4-end or all." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -l "parallel" -d "Read pdf pages in parallel using all CPU cores." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "pw" -l "password" -d "Password for decryption." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "o" -l "output" -d "Output file path." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "f" -l "format" -d "Output file format." -xa "csv excel html json markdown sqlite" # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "z" -l "zip" -d "Create ZIP archive." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "split" -l "split_text" -d "Split text that spans across multiple cells." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "flag" -l "flag_size" -d "Flag text based on font size. Useful to detect super/subscripts." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "strip" -l "strip_text" -d "Characters that should be stripped from a string before assigning it to a cell." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "M" -l "margins" -d "PDFMiner char_margin, line_margin and word_margin." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "q" -l "quiet" -d "Suppress logs and warnings." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "p" -l "pages" -d "Comma-separated page numbers. Example: 1,3,4 or 1,4-end or all." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -l "parallel" -d "Read pdf pages in parallel using all CPU cores." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "pw" -l "password" -d "Password for decryption." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "o" -l "output" -d "Output file path." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "f" -l "format" -d "Output file format." -xa "csv excel html json markdown sqlite" # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "z" -l "zip" -d "Create ZIP archive." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "split" -l "split_text" -d "Split text that spans across multiple cells." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "flag" -l "flag_size" -d "Flag text based on font size. Useful to detect super/subscripts." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "strip" -l "strip_text" -d "Characters that should be stripped from a string before assigning it to a cell." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "M" -l "margins" -d "PDFMiner char_margin, line_margin and word_margin." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "q" -l "quiet" -d "Suppress logs and warnings." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "p" -l "pages" -d "Comma-separated page numbers. Example: 1,3,4 or 1,4-end or all." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -l "parallel" -d "Read pdf pages in parallel using all CPU cores." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "pw" -l "password" -d "Password for decryption." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "o" -l "output" -d "Output file path." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "f" -l "format" -d "Output file format." -xa "csv excel html json markdown sqlite" # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "z" -l "zip" -d "Create ZIP archive." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "split" -l "split_text" -d "Split text that spans across multiple cells." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "flag" -l "flag_size" -d "Flag text based on font size. Useful to detect super/subscripts." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "strip" -l "strip_text" -d "Characters that should be stripped from a string before assigning it to a cell." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "M" -l "margins" -d "PDFMiner char_margin, line_margin and word_margin." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "q" -l "quiet" -d "Suppress logs and warnings." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "p" -l "pages" -d "Comma-separated page numbers. Example: 1,3,4 or 1,4-end or all." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -l "parallel" -d "Read pdf pages in parallel using all CPU cores." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "pw" -l "password" -d "Password for decryption." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "o" -l "output" -d "Output file path." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "f" -l "format" -d "Output file format." -xa "csv excel html json markdown sqlite" # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "z" -l "zip" -d "Create ZIP archive." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "split" -l "split_text" -d "Split text that spans across multiple cells." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "flag" -l "flag_size" -d "Flag text based on font size. Useful to detect super/subscripts." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "strip" -l "strip_text" -d "Characters that should be stripped from a string before assigning it to a cell." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "M" -l "margins" -d "PDFMiner char_margin, line_margin and word_margin." # subcommands flags
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "R" -l "table_regions" -d "Page regions to analyze. Example: x1,y1,x2,y2 where x1, y1 -> left-top and x2, y2 -> right-bottom." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "T" -l "table_areas" -d "Table areas to process. Example: x1,y1,x2,y2 where x1, y1 -> left-top and x2, y2 -> right-bottom." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "C" -l "columns" -d "X coordinates of column separators." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "e" -l "edge_tol" -d "Tolerance parameter for extending textedges vertically." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "r" -l "row_tol" -d "Tolerance parameter used to combine text vertically, to generate rows." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -s "c" -l "column_tol" -d "Tolerance parameter used to combine text horizontally, to generate columns." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -o "plot" -d "Plot elements found on PDF page for visual debugging." -xa "text grid contour textedge" # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'hybrid'" -l "help" -d "Show this message and exit." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "R" -l "table_regions" -d "Page regions to analyze. Example: x1,y1,x2,y2 where x1, y1 -> left-top and x2, y2 -> right-bottom." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "T" -l "table_areas" -d "Table areas to process. Example: x1,y1,x2,y2 where x1, y1 -> left-top and x2, y2 -> right-bottom." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -o "back" -d "Process background lines." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -o "scale" -d "Line size scaling factor. The larger the value, the smaller the detected lines." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -o "copy" -d "Direction in which text in a spanning cell will be copied over." -xa "h v" # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -o "shift" -d "Direction in which text in a spanning cell will flow." -xa " l r t b" # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "l" -l "line_tol" -d "Tolerance parameter used to merge close vertical and horizontal lines." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "j" -l "joint_tol" -d "Tolerance parameter used to decide whether the detected lines and points lie close to each other." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -o "block" -d "For adaptive thresholding, size of a pixel neighborhood that is used to calculate a threshold value for the pixel. Example: 3, 5, 7, and so on." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -o "const" -d "For adaptive thresholding, constant subtracted from the mean or weighted mean. Normally, it is positive but may be zero or negative as well." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -s "I" -l "iterations" -d "Number of times for erosion/dilation will be applied." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -o "res" -d "Resolution used for PDF to PNG conversion." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -o "plot" -d "Plot elements found on PDF page for visual debugging." -xa "text grid contour joint line" # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'lattice'" -l "help" -d "Show this message and exit." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "R" -l "table_regions" -d "Page regions to analyze. Example: x1,y1,x2,y2 where x1, y1 -> left-top and x2, y2 -> right-bottom." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "T" -l "table_areas" -d "Table areas to process. Example: x1,y1,x2,y2 where x1, y1 -> left-top and x2, y2 -> right-bottom." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "C" -l "columns" -d "X coordinates of column separators." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "e" -l "edge_tol" -d "Tolerance parameter for extending textedges vertically." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "r" -l "row_tol" -d "Tolerance parameter used to combine text vertically, to generate rows." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "c" -l "column_tol" -d "Tolerance parameter used to combine text horizontally, to generate columns." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -s "plot" -l "plot_type" -d "Plot elements found on PDF page for visual debugging." -xa "text grid contour textedge" # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'network'" -l "help" -d "Show this message and exit." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "R" -l "table_regions" -d "Page regions to analyze. Example: x1,y1,x2,y2 where x1, y1 -> left-top and x2, y2 -> right-bottom." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "T" -l "table_areas" -d "Table areas to process. Example: x1,y1,x2,y2 where x1, y1 -> left-top and x2, y2 -> right-bottom." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "C" -l "columns" -d "X coordinates of column separators." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "e" -l "edge_tol" -d "Tolerance parameter for extending textedges vertically." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "r" -l "row_tol" -d "Tolerance parameter used to combine text vertically, to generate rows." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "c" -l "column_tol" -d "Tolerance parameter used to combine text horizontally, to generate columns." # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -s "plot" -l "plot_type" -d "Plot elements found on PDF page for visual debugging." -xa "text grid contour textedge" # global
complete -c "camelot" -n "__fish_seen_subcommand_from 'stream'" -l "help" -d "Show this message and exit." # global