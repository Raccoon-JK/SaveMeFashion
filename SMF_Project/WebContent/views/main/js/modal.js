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