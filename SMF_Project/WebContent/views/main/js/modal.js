/**
 * 모달창 스크립트
 */

const modal = document.querySelector('.modal');
      const btnOpenPopup = document.querySelector('.btn-open-popup');

      btnOpenPopup.addEventListener('click', () => {
        modal.style.display = 'block';
      });

modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal")) {
        modal.style.display = "none"
    }
});

modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("btn-close-popup")) {
        modal.style.display = "none"
    }
});

function enterkey() {
        if (window.event.keyCode == 13) {
 
             // 엔터키가 눌렸을 때 실행할 내용
             login();
        }
}