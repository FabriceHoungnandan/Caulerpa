
#load data qui se fait dans _drake.R
# load all functions and packages of the research compendium
devtools::load_all()

# load all functions and packages of the research compendium
devtools::load_all()
# Configure drake plan before execution
# drake_config collects and sanitizes all the parameters and settings
config <- drake::drake_config(
  plan = Caulerpa::write_plan(),
  envir = getNamespace("Caulerpa"))

#####♥ En fait il faut savoir que le getNamespace("Caulerpa"))
# que tu fournis ici est est le nom du package que tu as défini
# en haut dans le fichier "DESCRIPTION"