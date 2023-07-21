document.addEventListener("DOMContentLoaded", () => {
  const nav = document.querySelector("nav.main");
  const nav_login = document.querySelector("li.login");
  const nav_join = document.querySelector("li.join");
  const nav_logout = document.querySelector("li.logout");

  const navClickHnadler = (e) => {
    const current = e.currentTarget; // nav.main
    const target = e.target; // li

    if (target.tagName === "LI") {
      const targetClassName = target.className;
      let URL = `${rootPath}/` + targetClassName;
      const USER_URL = "login member join mypage";
      if (targetClassName === "home" || targetClassName === "logout") {
        URL = `${rootPath}`;
      } else if (USER_URL.indexOf(targetClassName) > -1) {
        URL = `${rootPath}/user/` + targetClassName;
      }
      document.location.href = URL;
    }
  };

  nav?.addEventListener("click", navClickHnadler);

  nav_logout?.addEventListener("click", (e) => {
    logout();
    e.preventDefault(); // a
  });
});

function logout() {
  $.get("/user/logout", function (data) {
    window.location.reload();
  });
}
