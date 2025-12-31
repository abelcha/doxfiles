complete -c "docling" -l "from" -d "Specify input formats to convert from. Defaults to all formats." -xa "docx pptx html image pdf asciidoc md csv xlsx xml_uspto xml_jats mets_gbs json_docling audio vtt" # global
complete -c "docling" -l "to" -d "Specify output formats. Defaults to Markdown." -xa "md json html html_split_page text doctags" # global
complete -c "docling" -l "show-layout" -d "If enabled, the page images will show the bounding-boxes of the items. [default: no-show-layout]" # global
complete -c "docling" -l "headers" -d "Specify http request headers used when fetching url input sources in the form of a JSON string" # global
complete -c "docling" -l "image-export-mode" -d "Image export mode for the document (only in case of JSON, Markdown or HTML). With `placeholder`, only the position of the image is marked in the output. In `embedded` mode, the image is embedded as base64 encoded string. In `referenced` mode, the image is exported in PNG format and referenced from the main exported document. [default: embedded]" -xa "placeholder embedded referenced" # global
complete -c "docling" -l "pipeline" -d "Choose the pipeline to process PDF or image files. [default: standard]" -xa "standard vlm asr" # global
complete -c "docling" -l "vlm-model" -d "Choose the VLM model to use with PDF or image files. [default: granite_docling]" -xa "smoldocling smoldocling_vllm granite_vision granite_vision_vllm granite_vision_ollama got_ocr_2 granite_docling granite_docling_vllm" # global
complete -c "docling" -l "asr-model" -d "Choose the ASR model to use with audio/video files. [default: whisper_tiny]" -xa "whisper_tiny whisper_small whisper_medium whisper_base whisper_large whisper_turbo" # global
complete -c "docling" -l "ocr" -d "If enabled, the bitmap content will be processed using OCR. [default: ocr]" # global
complete -c "docling" -l "force-ocr" -d "Replace any existing text with OCR generated text over the full content. [default: no-force-ocr]" # global
complete -c "docling" -l "tables" -d "If enabled, the table structure model will be used to extract table information. [default: tables]" # global
complete -c "docling" -l "ocr-engine" -d "The OCR engine to use. When --allow-external-plugins is *not* set, the available values are: easyocr, ocrmac, rapidocr, tesserocr, tesseract. Use the option --show-external-plugins to see the options allowed with external plugins. [default: easyocr]" # global
complete -c "docling" -l "ocr-lang" -d "Provide a comma-separated list of languages used by the OCR engine. Note that each OCR engine has different values for the language names." # global
complete -c "docling" -l "pdf-backend" -d "The PDF backend to use. [default: dlparse_v2]" -xa "pypdfium2 dlparse_v1 dlparse_v2 dlparse_v4" # global
complete -c "docling" -l "table-mode" -d "The mode to use in the table structure model. [default: accurate]" -xa "fast accurate" # global
complete -c "docling" -l "enrich-code" -d "Enable the code enrichment model in the pipeline. [default: no-enrich-code]" # global
complete -c "docling" -l "enrich-formula" -d "Enable the formula enrichment model in the pipeline. [default: no-enrich-formula]" # global
complete -c "docling" -l "enrich-picture-classes" -d "Enable the picture classification enrichment model in the pipeline. [default: no-enrich-picture-classes]" # global
complete -c "docling" -l "enrich-picture-description" -d "Enable the picture description model in the pipeline. [default: no-enrich-picture-description]" # global
complete -c "docling" -l "artifacts-path" -d "If provided, the location of the model artifacts." # global
complete -c "docling" -l "enable-remote-services" -d "Must be enabled when using models connecting to remote services. [default: no-enable-remote-services]" # global
complete -c "docling" -l "allow-external-plugins" -d "Must be enabled for loading modules from third-party plugins. [default: no-allow-external-plugins]" # global
complete -c "docling" -l "show-external-plugins" -d "List the third-party plugins which are available when the option --allow-external-plugins is set. [default: no-show-external-plugins]" # global
complete -c "docling" -l "abort-on-error" -d "If enabled, the processing will be aborted when the first error is encountered. [default: no-abort-on-error]" # global
complete -c "docling" -l "output" -d "Output directory where results are saved. [default: .]" # global
complete -c "docling" -s "v" -l "verbose" -d "Set the verbosity level. -v for info logging, -vv for debug logging. [default: 0]" # global
complete -c "docling" -l "debug-visualize-cells" -d "Enable debug output which visualizes the PDF cells [default: no-debug-visualize-cells]" # global
complete -c "docling" -l "debug-visualize-ocr" -d "Enable debug output which visualizes the OCR cells [default: no-debug-visualize-ocr]" # global
complete -c "docling" -l "debug-visualize-layout" -d "Enable debug output which visualizes the layour clusters [default: no-debug-visualize-layout]" # global
complete -c "docling" -l "debug-visualize-tables" -d "Enable debug output which visualizes the table cells [default: no-debug-visualize-tables]" # global
complete -c "docling" -l "version" -d "Show version information." # global
complete -c "docling" -l "document-timeout" -d "The timeout for processing each document, in seconds." # global
complete -c "docling" -l "num-threads" -d "Number of threads [default: 4]" # global
complete -c "docling" -l "device" -d "Accelerator device [default: auto]" -xa "auto cpu cuda mps" # global
complete -c "docling" -l "logo" -d "Docling logo" # global
complete -c "docling" -l "page-batch-size" -d "Number of pages processed in one batch. Default: 4 [default: 4]" # global
complete -c "docling" -l "help" -d "Show this message and exit." # global