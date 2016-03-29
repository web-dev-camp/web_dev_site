module ApplicationHelper
  def slide1
    slide = "<div class='ls-slide'"
    slide = data_ls( slide , slidedelay:  8000 , transition2d:  1 , timeshift:  -1000)
    slide += ">"
    slide += bg "slider/net.jpg"
    slide += img  offsetxin:  0, durationin: 1500 , delayin: 3000 , easingin: :linear ,
                  scalexin: 0 , scaleyin: 0 , offsetxout: 0 , durationout: 1500 , showuntil: 1 ,
                  easingout: :linear , scalexout: 2 , scaleyout: 2 , src: "slider/circle.png",
                  style:  "top: 20px ; left: 50% ; white-space:  nowrap ;"
    slide += text offsetxin: 0 , durationin: 2500 , delayin: 1000 , scalexin: 0 , scaleyin: 0 ,
                  offsetxout: 0 , scalexout: 0 , scaleyout: 0 ,
                  style: "top: 124px ; left: 156px ; font-weight:  300 ;  opacity:  .4 ; font-size: 200px ; color: #fff ; white-space:  nowrap ;",
                  text: "&amp"
    slide += text offsetxin: -50 , durationin: 2000 , delayin: 1000 , offsetxout: -50 , durationout: 1000 ,
                  style: "top: 320px ; left: 120px ; font-weight:  300 ;  background:  white ;  background:  rgba(255,255,255,.85) ; height: 40px ; padding-right: 10px ; padding-left: 10px ; font-size: 30px ; line-height: 37px ; color: #A94545 ; white-space:  nowrap ;" ,
                  text: "ALL THESE FEATURES"
    slide += text offsetxin: 50 , delayin: 2000 , skewxin: -60 , offsetxout: -50 , durationout: 1000 ,
                  skewxout: -60 ,
                  style: "top: 360px ; left: 273px ; font-weight:  500 ; font-size: 30px ; color: #fff ; white-space:  nowrap;",
                  text: "much more!"
    slide += text offsetxin: 0 , delayin: 2500 , rotatein: 90 , transformoriginin: "right bottom 0" ,
                  offsetxout: 0 , durationout: 1500 , transformoriginout: "right bottom 0" ,
                  style: "top: 320px ; left: 1013px ; font-weight:  500 ;  text-align:  right ; font-size: 30px ; color: #fff ; white-space:  nowrap;",
                  text: "...to create"
    slide += text offsetxin: 0 , durationin: 2500 , delayin: 3250 , easingin: "easeOutElastic" ,
                  rotatexin: 90 , transformoriginin: "50% top 0" , offsetxout: 0 , durationout: 1000 ,
                  rotatexout: 90 , transformoriginout: "50% bottom 0" ,
                  style: "top: 360px ; left: 890px ; font-weight:  300 ;  text-align:  right ; width: 260px ; height: 40px ; padding-right: 10px ; font-size: 30px ; line-height: 37px ; color: #ffffff ; background: #f06a52 ; white-space:  nowrap;",
                  text: "THE BEST SLIDER"
    slide += text offsetxin: -50 , delayin: 3500 , skewxin: 60 , scalexin: 1.5 , offsetxout: -50 ,
                  durationout: 1000 , skewxout: 60 , scalexout: 1.5 ,
                  style: "top: 405px ; left: 883px ; font-size: 30px ; color: #fff ; white-space:  nowrap;",
                  text: "with no compromises!"
    slide += img  durationin: 1500 , scalexin: 0.8 , scaleyin: 0.8 , scalexout: 0.8 , scaleyout: 0.8 ,
                  src: "slider/ls5box.png",
                  style: "top: 80px ; left: 50% ; white-space:  nowrap;"
    slide += "</div>"
    slide
  end

  def bg pic
    "<img class='ls-bg' alt='Slide background' src='#{image_path(pic)}'/>"
  end
  def text args
    txt = args.delete(:text)
    p = props( "<p" , args)
    p + ">" + txt + "</p>"
  end
  def img args
    src = image_path args.delete(:src)
    tag = props( "<img alt='' src=#{quote(src)}"  , args )
    tag + "/>"
  end
  def props div , args
    style = args.delete(:style)
    if style
      div += " style=" + quote(style)
    end
    div += " class='ls-l'"
    data_ls div , args
  end
  def data_ls div , args
    data = args.inject("") {|s , a| s +=  "#{a.first}:#{a.last}; " }
    div + " data-ls=" +  quote(data)
  end
  def quote str
    "'" + str + "'"
  end
end
