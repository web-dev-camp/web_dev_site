module ApplicationHelper
  def slide2
    slide = "<div class='ls-slide'"
    slide = data_ls( slide , slidedelay:  8000 , transition2d:  1)
    slide += ">"
    slide += bg "slider/development.jpg"
    slide += text delayin:300 , durationin: 1500 , rotatein:20 , rotatexin: 30 , scalexin:1.5 ,
                  scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout: 750 , rotateout:20 ,
                  rotatexout:-30 , scalexout:0 , scaleyout:0 , transformoriginout:"left 50% 0" ,
                  style: "top:50px;left:100px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#fa6b4b;border-radius:4px;white-space: nowrap;" ,
                  text: "FULLY RESPONSIVE"
   slide += text  delayin:700, offsetxin:0 , durationin:1500, rotateyin:90 , skewxin:60 ,
                  transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750, skewxout:60,
                  text: "with the latest technologies",
                  style: "top:90px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;"
   slide += text  delayin:1000, durationin:1500, rotatein:20 , rotatexin:30 , scalexin:1.5 ,
                  scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout:750 , rotateout:20 ,
                  rotatexout:-30 , scalexout:0 , scaleyout:0 , transformoriginout:"left 50% 0" ,
                  style: "top:150px;left:100px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#fa6b4b;border-radius:4px;white-space: nowrap;" ,
                  text: "SMOOTH RENDERING"
   slide += text  delayin:1400 , offsetxin:0 , durationin:1500 ,  rotateyin:90 , skewxin:60 ,
                  transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750 , skewxout:60 ,
                  style: "top:190px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;",
                  text: "with hardware-acceleration"
   slide += text  delayin:1700 , durationin:1500 , rotatein:20 , rotatexin:30 , scalexin:1.5 ,
                  scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout:750 , rotateout:20 ,
                  rotatexout:-30 , scalexout:0 , scaleyout:0 , transformoriginout:"left 50% 0",
                  style: "top:250px;left:100px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#fa6b4b;border-radius:4px;white-space: nowrap;",
                  text: "NEW TRANSITIONS"
   slide += text  delayin:2100, offsetxin:0 , durationin:1500 ,rotateyin:90 , skewxin:60 ,
                  transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750 , skewxout:60,
                  style: "top:290px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;",
                  text: "slide, fade, scale, skew and rotate layers even in 3D"
   slide += text  delayin:2400, durationin:1500 ,rotatein:20 , rotatexin:30 , scalexin:1.5 ,
                  scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout:750 , rotateout:20,
                  rotatexout:-30 , scalexout:0 , scaleyout:0, transformoriginout:"left 50% 0",
                  style: "top:350px;left:100px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#fa6b4b;border-radius:4px;white-space: nowrap;",
                  text: "CLEANER MARKUP"
   slide += text  delayin:2800 , offsetxin:0 , durationin:1500 , rotateyin:90 , skewxin:60 ,
                  transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750 , skewxout:60 ,
                  style: "top:390px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;",
                  text: "working with the plugin is more easy"
  slide += "</div>"
  slide
  end
  def slide1
    slide = "<div class='ls-slide'"
    slide = data_ls( slide , slidedelay:  10000 , transition2d:  1 , timeshift:  -1000)
    slide += ">"
    slide += bg "slider/net.jpg"
    slide += text delayin: 500 , offsetxin: -50 , durationin: 2000 ,  offsetxout: -50 , durationout: 1000 ,
                  style: "top: 80px ; left: 80px ; font-weight:  500 ; font-size: 40px ; line-height: 37px ;  white-space:  nowrap ;" ,
                  text: "You know the web"
    slide += text delayin: 1500 , offsetxin: 50 , skewxin: -60 , offsetxout: -50 , durationout: 1000 ,
                  skewxout: -60 ,
                  style: "top: 260px ; left: 140px ; font-weight:  500 ; font-size: 40px ; color: #fff ; white-space:  nowrap;",
                  text: "now learn how it works!"
    slide += img  delayin: 2500 , durationin: 1500 , offsetxin:  0, easingin: :linear ,
                  scalexin: 0 , scaleyin: 0 , offsetxout: 0 , durationout: 1500 , showuntil: 1 ,
                  easingout: :linear , scalexout: 2 , scaleyout: 2 , src: "slider/circle.png",
                  style:  "top: 20px ; left: 50% ; white-space:  nowrap ;"
    slide += text delayin: 2500 , rotatein: 90 ,offsetxin: 0 ,  transformoriginin: "right bottom 0" ,
                  durationout: 1500 ,offsetxout: 0 , transformoriginout: "right bottom 0" ,
                  style: "top: 60px ; left: 960px ; font-weight:  500 ;  text-align:  right ; font-size: 40px ; color: #fff ; white-space:  nowrap;",
                  text: "8 weeks"
    slide += text delayin: 3500 ,durationin: 2500 , offsetxin: 0 , easingin: "easeOutElastic" ,
                  rotatexin: 90 , transformoriginin: "50% top 0" , offsetxout: 0 , durationout: 1000 ,
                  rotatexout: 90 , transformoriginout: "50% bottom 0" ,
                  style: "top: 160px ; left: 800px ; font-weight: 500 ;  text-align:  right ; width: 240px ; height: 40px ; padding-right: 10px ; font-size: 30px ; line-height: 37px ; color: #ffffff ; background: #179446 ; white-space:  nowrap;",
                  text: "Intensive course"
    slide += img  delayin: 3500 , durationin: 1500 , scalexin: 0.8 , scaleyin: 0.8 ,
                  scalexout: 0.8 , scaleyout: 0.8 ,
                  src: "slider/web_matrix.png",
                  style: "top: 40px ; left: 50% ; white-space:  nowrap; width: 300px;"
    slide += text delayin: 4500 , durationout: 1000 ,offsetxin: -50 , skewxin: 60 , scalexin: 1.5 ,
                  offsetxout: -50 , skewxout: 60 , scalexout: 1.5 ,
                  style: "top: 250px ; left: 740px ; font-weight:  500 ; font-size: 30px ; color: #fff ; white-space:  nowrap;",
                  text: "to jumpstart your new career!"
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
