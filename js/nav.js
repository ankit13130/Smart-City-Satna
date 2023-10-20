const createNav = () => {
    let nav = document.querySelector('#nav');
    var username;
    nav.innerHTML = `
        <div class="logo">
            <img class="logo-image" src="assets/static/logo.png" alt="">
        </div>
        <div class="inav">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">about me</a></li>
                <li><a href="#">Help</a></li>
                <li><a href="#">contant us</a></li>
            </ul>
        </div>
        <div id="user">
            <a href="logout">${ username }</a>
        </div>
    `;
}   

createNav();