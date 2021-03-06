% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f_stat.R
\name{f_stat_group_ana}
\alias{f_stat_group_ana}
\title{analyse group difference of dataset}
\usage{
f_stat_group_ana(data_ls, col_group, thresh_p_val = 0.05,
  thresh_diff_perc = 3, output_file = "group_ana", static_plots = T,
  alluvial = T, alluvial_thresh_p_val = 0.05,
  alluvial_thresh_diff_perc = 7.5, max_alluvial_flows = 1500, tabplot = T,
  return_taglist = F, fig.width = 16, fig.height = 10, quiet = FALSE)
}
\arguments{
\item{data_ls}{data_ls object generated by f_clean_data(), or a named list
list( data = <dataframe>, numericals = < vector with column names of
numerical columns>)}

\item{col_group}{character vector denoting grouping columns}

\item{thresh_p_val}{p value threshold for plots, Default: 0.05}

\item{thresh_diff_perc}{minimum percent difference threshold for plots,
Default: 3}

\item{output_file}{character vector containing output file name}

\item{static_plots}{boolean, render static plots indicating statistical
differences with brackets, Default = TRUE}

\item{alluvial}{boolean, render alluvial plot, Default: TRUE}

\item{alluvial_thresh_p_val}{double, threshold for feature to be inlcuded in
alluvial plot. Features that are not highly significant and convey a large
percental difference will result in a high number of flows thus cluttering
the plot. It is not recommended to set these thresholds lower than the
default. Default: 0.05}

\item{alluvial_thresh_diff_perc}{double, threshold for feature to be inlcuded
in alluvial plot. Features that are not highly significant and convey a
large percental difference will result in a high number of flows thus
cluttering the plot. It is not recommended to set these thresholds lower
than the default. Default: 7.5}

\item{max_alluvial_flows}{integer, maximum number of alluvial flows. Alluvial
Plots can take a long time to render. Rendering an alluvial plot with the
default setting of 1500 should take at least 10 min. Default 1500}

\item{tabplot}{boolean, render tabplot threshold for features are the same as
for the dynamic plots, Default: TRUE , static_plots = T}

\item{return_taglist}{boolean, return taglist instead of rendereing the final
html document and returning the link to the html file. Usefull if analysis
should be directly included into the current markdown document.}

\item{fig.width}{integer Width of Alluvial and Tabplot in inches. Default
values can be comfortably viewed on a 1920 x 1080 screen resolution. Default: 16}

\item{fig.height}{integer height of Alluvial and Tabplot in inches. Default
values can be comfortably viewed on a 1920 x 1080 screen resolution. Default: 10}

\item{quiet}{booloean, suppress render markdown output to console, Default: FALSE}
}
\value{
file path to html file / or taglist
}
\description{
creates a html document with a group analysis including:
 \itemize{ \item P value table \item Dynamic Plots of all significant
 features \item static plots with brackets indicating statistical differences
 \item Tabplot \item Alluvial Plot \item table containing means and medians
 for numerical variables \item table containing counts and percentages for
 categorical variables } The function automatically renders three html pages
 one for the additional static plots, one for the tableplot and one for the
 alluvial plots. In the same direcotry that can be determined by the
 outputfile parameter. Default behaviour will also render the entire html
 document returning the filepath of the new html file. The other three html
 files will be linked to in the document. You can modify the function to
 return a htmltools taglist instead. The above mentioned 3 additional html
 files for the other types of plots will still be rendered though with
 default settings. These extra plots can be switched off though.
}
\examples{
\dontrun{
 data_ls = f_clean_data(mtcars)
 f_stat_group_ana(data_ls, 'cyl', output_file = 'test_me')
 file.remove('test_me.html')
 file.remove('test_me_stat_plots.html')
 file.remove('test_me_alluvial.html')
 file.remove('test_me_tabplots.html')
}
}
\seealso{
\code{\link[plotly]{ggplotly}}
 \code{\link[htmltools]{tagList}},\code{\link[htmltools]{h1}},\code{\link[htmltools]{h2}}
}
