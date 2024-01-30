import pdfkit

# Specify the correct path to wkhtmltopdf
config = pdfkit.configuration(wkhtmltopdf='/usr/local/bin/wkhtmltopdf')

pdf_file_path = "concent.pdf"
html_file = pdfkit.from_file(pdf_file_path, "my_html_file.html", configuration=config)
