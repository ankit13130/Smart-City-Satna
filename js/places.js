var tl = gsap.timeline()

tl
    .to(".cards",{
        duration:2,
        // x:0,
        width:"20vw",
        stagger:0.8,
        opacity:1,
        ease:Expo.easeInOut,
    })