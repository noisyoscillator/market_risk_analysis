########################
## test ijulia tutorials
########################

ijuliaFileNames = ["Raw_data_descriptive_analysis_and_filtering"]

println(" Converting ijulia notebooks\n")
println("--------------------------------")
println("--------------------------------\n")

ipythonInstalled = true
try
    for f in ijuliaFileNames
        run(`ipython nbconvert notebooks/$(f).ipynb --to python`)
        run(`mv $(f).py nbconvert_html/$(f).html`)
        run(`ipython nbconvert notebooks/$(f).ipynb --to python`)
        run(`mv $(f).py nbconvert_jl/$(f).jl`)
    end
catch
    println("no ipython installed")
    ipythonInstalled = false
end