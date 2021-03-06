% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f_manip.R
\name{f_manip_data_2_model_matrix_format}
\alias{f_manip_data_2_model_matrix_format}
\title{brings data to model.matrix format}
\usage{
f_manip_data_2_model_matrix_format(data, formula, scale_data = T,
  center_data = T, exclude_na_columns = T)
}
\arguments{
\item{data}{a dataframe}

\item{formula}{formula}

\item{scale_data}{boolean}

\item{center_data}{boolean}

\item{exclude_na_columns}{boolean}
}
\value{
list with new dataframe and new formula
}
\description{
model.matrix() creates dummy variables for factors. The names of
  these dummy variables however are not compatible with the formula syntax.
  This wrapper cleans up the names of the new variables.
}
\examples{

data_ls = f_clean_data(mtcars)
data = data_ls$data
formula = hp ~ disp + am + gear
data_trans = f_manip_data_2_model_matrix_format( data, formula )
response_var =f_manip_get_response_variable_from_formula(data_trans$formula)
vars = f_manip_get_variables_from_formula(data_trans$formula)
x = as.matrix( select( data_trans$data, one_of(vars) ) )
y = data_trans$data[[response_var]]
glmnet::glmnet( x , y )

}
\seealso{
\code{\link[stringr]{str_replace_all}}
}
