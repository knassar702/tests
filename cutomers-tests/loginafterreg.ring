#!c:\ring\bin\ring.exe -cgi
Load "weblib.ring"
Load "datalib.ring"

Import System.Web

website = "loginafterreg.ring"

new page {
  boxstart()
        text( "Login")
        newline()
  boxend()
  divstart([:style = stylegradient(6) + stylesize("100%","95%") ])
  link([ :url = website, :title = "back" , :style = stylecolor("white")])
  newline()
  divstart([ :style= styledivcenter("500","130") + stylegradient(52) ])
  formpost("resafter.ring")
        tablestart([ :Style =   stylemarginleft("2%") + stylemargintop("2%") +
                                stylewidth("90%") ])
          rowstart([])
                cellstart([:style = stylewidth("20%") + styleheight(30)])
                  text("User Name")
                cellend()
                cellstart([ :style = stylewidth("80%") ])
                  textbox([:name = "username", :style = stylewidth("100%")])
                cellend()
          rowend()
          rowstart([])
                cellstart([ :style = styleheight(30)])
                  text("Password")
                cellend()
                cellstart([])
                  textbox([:name = "password" , :type = "password"])
                cellend()
          rowend()
          rowstart([])
                cellstart([ :style = styleheight(30) ])
                cellend()
                cellstart([])
                  submit([:value = "Login"  ])
                cellend()
          rowend()
        tableend()
  formend()
  divend()
  divend()
}