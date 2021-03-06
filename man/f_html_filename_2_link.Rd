% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f_html.R
\name{f_html_filename_2_link}
\alias{f_html_filename_2_link}
\title{convert a filename + path or a file_path  to a html link}
\usage{
f_html_filename_2_link(file_name = dir()[1], path = getwd(),
  file_path = NULL, link_text = file_name)
}
\arguments{
\item{file_name}{character vector, Default: dir()[1]}

\item{path}{character vector, Default: getwd()}

\item{file_path}{file.path( path, file_name)}

\item{link_text}{character vector}
}
\value{
link
}
\examples{
dir()[1]
f_html_filename_2_link()
dir()[1:5]
f_html_filename_2_link(dir()[1:5])

file_path = dir( getwd(), full.names=TRUE)[2]
file_path
f_html_filename_2_link(file_path = file_path)

}
\seealso{
\code{\link[stringr]{str_replace_all}}
}
