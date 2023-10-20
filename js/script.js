var tl = gsap.timeline()

tl
    .to("#box1",{
        height:"0vh",
        duration:3,
        ease:Expo.easeInOut
    })

    .to("#box2",{
        height:"100vh",
        duration:3,
        delay:-3,
        ease:Expo.easeInOut
    })

    .to("#box3",{
        height:"100vh",
        duration:2,
        delay:-2,
        ease:Expo.easeInOut
    })

    .from("#nav",{
         duration:1.5,
         // delay:-1,
         y:-100,
         opacity:0,
     })

     .from(".logo, .inav, #search",{
         duration:1,
         scale:0,
         ease:"back",
         opacity:0,
     })
    
     .from("#page1",{
        duration:2,
        x:200,
        ease:Power2,
        opacity:0,
    })

     .from("#page3-left #circle",{
        duration:1,
        rotate:-360,
        scale:0.8,
        ease:Power0,
        repeat:-1,
        yoyo:true
    })

     .from("#page5 .content-box",{
        duration:4,
        stagger:1,
        y:-100,
        ease:Expo.easeInOut,
        opacity:0
    })

    .to("#anim-text>h1",{
        duration:1.5,
        x:-420,
        repeat:-1,
        ease:Power0.easeInOut,
    })

var swiper = new Swiper(".mySwiper", {
        slidesPerView: 1,
        spaceBetween: 30,
        loop: true,
        grabCursor:true,
        autoplay: {
            delay: 2000,
            disableOnInteraction: false,
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        // navigation: {
        //   nextEl: ".swiper-button-next",
        //   prevEl: ".swiper-button-prev",
        // },
      });


// document.querySelectorAll(".images").forEach((elem)=>{
//     elem.addEventListener('click',(dets)=>{
//         // document.getElementById("send").href = `login.html?category=${(dets.target.id).toUpperCase()}`;
//         // document.getElementById("send").onclick = `login.html?category=${(dets.target.id).toUpperCase()}`;
//         // submit();
//         console.log(href = `login.html?category=${(dets.target.id).toUpperCase()}`)
//     })
// })