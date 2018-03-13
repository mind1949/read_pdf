# 要求:用ruby读取pdf内容.

require 'docsplit'

def pdf_to_text(pdf_filename)
	Docsplit.extract_text([pdf_filename], :ocr => false, :o => File.dirname(pdf_filename))
	puts File.dirname(pdf_filename)
	filename= File.basename(pdf_filename, File.extname(pdf_filename))
	txt_file = filename + '.txt'
	txt_filename = File.dirname(pdf_filename) + '/' + txt_file
	extracted_text = File.read(txt_filename)
	#puts extracted_text
end

pdf_filename=ARGV[0]
pdf_to_text(pdf_filename)