# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load", ->
    regionSelect = document.getElementById("regionSelect")
    departementSelect= document.getElementById("departementSelect")

    if regionSelect && departementSelect
        changeE = (e) -> 
            regOptionSelect = regionSelect.options[regionSelect.selectedIndex]
            depOptionSelect = departementSelect.options[departementSelect.selectedIndex]
            regSelect = regOptionSelect.value;
            depSelect = depOptionSelect.value;
            if depSelect != "-1" && regSelect != "-1" && depOptionSelect.dataset.reg != regSelect
                depOptionSelect.selected = ""
                depOptionSelect = departementSelect[0]
                depOptionSelect.selected = "selected"
                depSelect = depOptionSelect.value;
            hide = Array()
            for d in departementSelect.children
                if d.dataset.reg == regSelect
                    d.classList.remove("hide")
                else
                    d.classList.add("hide")
                if d.value != "-1"
                    if(d.dataset.reg == regSelect || regSelect == "-1")
                        if d.value != depSelect && depSelect != "-1"
                            hide.push(d.value)
                    else
                        hide.push(d.value)

            for asso in document.querySelectorAll(".asso")
                if hide.includes(asso.dataset.dep)
                    asso.classList.add("hide")
                else 
                    asso.classList.remove("hide")
        
        regionSelect.addEventListener("change", changeE)
        departementSelect.addEventListener("change", changeE)
