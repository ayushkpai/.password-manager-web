document.addEventListener("turbo:load", () => {
  const modal = document.getElementById("command-palette");
  const input = document.getElementById("cmdk-input");

  if (!modal || !input) return;

  function openCmdk() {
    modal.classList.remove("hidden");
    input.focus();
  }

  function closeCmdk() {
    modal.classList.add("hidden");
    input.value = "";
  }

  document.addEventListener("keydown", (e) => {
    if (e.metaKey && e.key.toLowerCase() === "k") {
      e.preventDefault();
      openCmdk();
    }

    if (e.key === "Escape") {
      closeCmdk();
    }
  });

  modal.addEventListener("click", (e) => {
    if (e.target === modal) {
      closeCmdk();
    }
  });
});
