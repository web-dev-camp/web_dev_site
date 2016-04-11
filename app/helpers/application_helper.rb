module ApplicationHelper
  def delayed_image pic
    image_tag( "brands/1.jpg" ,  "data-src" => asset_path(pic) , class: 'swiper-lazy') +
    raw("<div class='swiper-lazy-preloader swiper-lazy-preloader-white'></div>")
  end
  def camp_slide(pic)
    slide = "<div class='ls-slide'"
    slide = data_ls( slide , slidedelay:  6000 , transition2d:  1)
    slide + ">" + bg(pic) + "</div>"
  end
  def index_slide pic
    slide = "<div class='ls-slide'"
    slide = data_ls( slide , slidedelay:  8000 , transition2d:  1)
    slide += ">"
    slide + bg("slider/#{pic}.jpg")
  end

  def slide4
    slide = index_slide "student"
    slide += text delayin:300 , durationin: 1500 , rotatein:20 , rotatexin: 30 , scalexin:1.5 ,
                  scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout: 750 , rotateout:20 ,
                  rotatexout:-30 , scalexout:0 , scaleyout:0 , transformoriginout:"left 50% 0" ,
                  style: "top:50px;left:100px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#8ab933;border-radius:4px;white-space: nowrap;" ,
                  text: "Check the course program"
    #  slide += text  delayin:700, offsetxin:0 , durationin:1500, rotateyin:90 , skewxin:60 ,
    #                 transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750, skewxout:60,
    #                 text: "intensive course",
    #                 style: "top:90px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;"
    slide += text  delayin:1500, durationin:1500, rotatein:20 , rotatexin:30 , scalexin:1.5 ,
                   scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout:750 , rotateout:20 ,
                   rotatexout:-30 , scalexout:0 , scaleyout:0 , transformoriginout:"left 50% 0" ,
                   style: "top:250px;left:200px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#8ab933;border-radius:4px;white-space: nowrap;" ,
                   text: "Apply"
    #  slide += text  delayin:1400 , offsetxin:0 , durationin:1500 ,  rotateyin:90 , skewxin:60 ,
    #                 transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750 , skewxout:60 ,
    #                 style: "top:190px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;",
    #                 text: "in 2 week modules"
    slide += text  delayin:4000 , durationin:1500 , rotatein:20 , rotatexin:30 , scalexin:1.5 ,
                   scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout:750 , rotateout:20 ,
                   rotatexout:-30 , scalexout:0 , scaleyout:0 , transformoriginout:"left 50% 0",
                   style: "top:120px;left:700px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#8ab933;border-radius:4px;white-space: nowrap;",
                   text: "BECOME a DEVELOPER"
    #  slide += text  delayin:2100, offsetxin:0 , durationin:1500 ,rotateyin:90 , skewxin:60 ,
    #                 transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750 , skewxout:60,
    #                 style: "top:290px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;",
    #                 text: ""
    slide += text  delayin:5000, durationin:1500 ,rotatein:20 , rotatexin:30 , scalexin:1.5 ,
                   scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout:750 , rotateout:20,
                   rotatexout:-30 , scalexout:0 , scaleyout:0, transformoriginout:"left 50% 0",
                   style: "top:320px;left:600px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#8ab933;border-radius:4px;white-space: nowrap;",
                   text: "START A NEW CAREER"
    #  slide += text  delayin:2800 , offsetxin:0 , durationin:1500 , rotateyin:90 , skewxin:60 ,
    #                 transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750 , skewxout:60 ,
    #                 style: "top:390px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;",
    #                 text: ""
    slide + "</div>"
  end
  def slide3
    slide = index_slide "lunch"
    slide += text offsetxin:50, durationin:750 , easingin:"easeOutBack" ,skewxin:-50,
                  offsetxout:-50,durationout:600, easingout:"easeInBack",
                  showuntil:1000, skewxout:50 ,
                  style: "top:44%;left:50%;font-weight: 300;font-size:30px;color:#ffffff;white-space: nowrap;",
                  text: "welcome to"
    slide += text delayin:250, durationin:750, durationout:600,
                  offsetxin: -100, offsetxout:100,
                  easingin: :easeOutBack, skewxin:-50, easingout: :easeInBack,
                  showuntil:1000, skewxout:50,
                  style: "top:52%;left:50%;font-weight: 300;font-size:50px;color:#ffffff;white-space: nowrap;",
                  text: "Villa Taika"
    slide += text delayin:2000, offsetxin:0, durationin:1500, rotateyin:90,
                  transformoriginin:"left 50% 0", offsetxout:0, durationout:1500, showuntil:1000,
                  rotateyout:-90, transformoriginout:"left 50% 0",
                  style: "top:47%;left:690px;font-weight: 500;font-size:35px;color:#ffffff;white-space: nowrap;",
                  text: "Live in"
    # slide += img  delayin:1500, offsetxin:0, durationin:1500, rotateyin:90,
    #               transformoriginin:"right 50% 0", offsetxout:0, durationout:1500, showuntil:1000,
    #               rotateyout:-90, transformoriginout:"right 50% 0",
    #               src: image_path("slider/circle.png"),
    #               style: "top:45%;left:585px;white-space: nowrap;"
    slide += text delayin:2200 , offsetxin:0, durationin:2000, rotatein:-45, rotateyin:-1,
                  scalexin:0.5, scaleyin:0.5, transformoriginin:"left bottom 0", offsetxout:0,
                  durationout:1000, rotateout:45, scalexout:2, scaleyout:2,
                  transformoriginout:"right bottom 0",
                  style: "top:250px;left:550px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#849e00;background:#ffffff;border-radius:4px;white-space: nowrap;",
                  text: "BEAUTIFUL NATURE"
    slide += text delayin:4000, offsetxin:0, durationin:2000, rotatein:-45, scalexin:2, scaleyin:2,
                  transformoriginin:"right top 0", offsetxout:0, durationout:1000, rotateout:45,
                  scalexout:2, scaleyout:2, transformoriginout:"left top 0",
                  style: "top:300px;left:550px;font-weight: 500;font-size:30px;color:#ffffff;white-space: nowrap;",
                  text: "remove the distraction"

    slide + "</div>"
  end
  def slide2
    slide = index_slide "group_study"
    slide += text delayin:300 , durationin: 1500 , rotatein:20 , rotatexin: 30 , scalexin:1.5 ,
                  scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout: 750 , rotateout:20 ,
                  rotatexout:-30 , scalexout:0 , scaleyout:0 , transformoriginout:"left 50% 0" ,
                  style: "top:50px;left:100px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#8ab933;border-radius:4px;white-space: nowrap;" ,
                  text: "Small groups"
    #  slide += text  delayin:700, offsetxin:0 , durationin:1500, rotateyin:90 , skewxin:60 ,
    #                 transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750, skewxout:60,
    #                 text: "intensive course",
    #                 style: "top:90px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;"
    slide += text  delayin:1500, durationin:1500, rotatein:20 , rotatexin:30 , scalexin:1.5 ,
                   scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout:750 , rotateout:20 ,
                   rotatexout:-30 , scalexout:0 , scaleyout:0 , transformoriginout:"left 50% 0" ,
                   style: "top:250px;left:200px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#8ab933;border-radius:4px;white-space: nowrap;" ,
                   text: "HTML / CSS / Programming"
    #  slide += text  delayin:1400 , offsetxin:0 , durationin:1500 ,  rotateyin:90 , skewxin:60 ,
    #                 transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750 , skewxout:60 ,
    #                 style: "top:190px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;",
    #                 text: "in 2 week modules"
    slide += text  delayin:4000 , durationin:1500 , rotatein:20 , rotatexin:30 , scalexin:1.5 ,
                   scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout:750 , rotateout:20 ,
                   rotatexout:-30 , scalexout:0 , scaleyout:0 , transformoriginout:"left 50% 0",
                   style: "top:120px;left:700px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#8ab933;border-radius:4px;white-space: nowrap;",
                   text: "intesive learning"
    #  slide += text  delayin:2100, offsetxin:0 , durationin:1500 ,rotateyin:90 , skewxin:60 ,
    #                 transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750 , skewxout:60,
    #                 style: "top:290px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;",
    #                 text: ""
    slide += text  delayin:5000, durationin:1500 ,rotatein:20 , rotatexin:30 , scalexin:1.5 ,
                   scaleyin:1.5 , transformoriginin:"left 50% 0" , durationout:750 , rotateout:20,
                   rotatexout:-30 , scalexout:0 , scaleyout:0, transformoriginout:"left 50% 0",
                   style: "top:320px;left:600px;font-weight: 300;height:40px;padding-right:10px;padding-left:10px;font-size:30px;line-height:37px;color:#ffffff;background:#8ab933;border-radius:4px;white-space: nowrap;",
                   text: "START A NEW CAREER"
    #  slide += text  delayin:2800 , offsetxin:0 , durationin:1500 , rotateyin:90 , skewxin:60 ,
    #                 transformoriginin:"25% 50% 0" , offsetxout:100 , durationout:750 , skewxout:60 ,
    #                 style: "top:390px;left:100px;font-weight: 300;font-size:24px;color:#333;white-space: nowrap;",
    #                 text: ""
    slide + "</div>"
  end
  def slide1
    slide = index_slide "net"
    slide += text delayin: 500 , offsetxin: -50 , durationin: 2000 ,  offsetxout: -50 , durationout: 1000 ,
                  style: "top: 80px ; left: 180px ; font-weight:  500 ; font-size: 40px ; line-height: 37px ;  white-space:  nowrap ;" ,
                  text: "You know the web"
    slide += text delayin: 1500 , offsetxin: 50 , skewxin: -60 , offsetxout: -50 , durationout: 1000 ,
                  skewxout: -60 ,
                  style: "top: 260px ; left: 140px ; font-weight:  500 ; font-size: 40px ; color: #fff ; white-space:  nowrap;",
                  text: "now learn how it works!"
    slide += text delayin: 2500 , rotatein: 90 ,offsetxin: 0 ,  transformoriginin: "right bottom 0" ,
                  durationout: 1500 ,offsetxout: 0 , transformoriginout: "right bottom 0" ,
                  style: "top: 60px ; left: 960px ; font-weight:  500 ;  text-align:  right ; font-size: 40px ; color: #fff ; white-space:  nowrap;",
                  text: "8 weeks"
    slide += text delayin: 3500 ,durationin: 2500 , offsetxin: 0 , easingin: "easeOutElastic" ,
                  rotatexin: 90 , transformoriginin: "50% top 0" , offsetxout: 0 , durationout: 1000 ,
                  rotatexout: 90 , transformoriginout: "50% bottom 0" ,
                  style: "top: 160px ; left: 800px ; font-weight: 500 ;  text-align:  right ; width: 240px ; height: 40px ; padding-right: 10px ; font-size: 30px ; line-height: 37px ; color: #ffffff ; background: #179446 ; white-space:  nowrap;",
                  text: "Intensive course"
    # slide += img  delayin: 3500 , durationin: 1500 , scalexin: 0.8 , scaleyin: 0.8 ,
    #               scalexout: 0.8 , scaleyout: 0.8 ,
    #               src: "slider/web_matrix.png",
    #               style: "top: 40px ; left: 50% ; white-space:  nowrap; width: 300px;"
    slide += text delayin: 4500 , durationout: 1000 ,offsetxin: -50 , skewxin: 60 , scalexin: 1.5 ,
                  offsetxout: -50 , skewxout: 60 , scalexout: 1.5 ,
                  style: "top: 250px ; left: 740px ; font-weight:  500 ; font-size: 30px ; color: #fff ; white-space:  nowrap;",
                  text: "to jumpstart your new career!"
    slide += img  delayin: 5000 , durationin: 1500 , offsetxin:  0, easingin: :linear ,
                  scalexin: 0 , scaleyin: 0 , offsetxout: 0 , durationout: 1500 , showuntil: 1 ,
                  easingout: :linear , scalexout: 2 , scaleyout: 2 , src: "slider/circle.png",
                  style:  "top: 20px ; left: 50% ; white-space:  nowrap ;"
    slide + "</div>"
  end

  private

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
