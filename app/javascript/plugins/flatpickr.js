import flatpickr from "flatpickr";

const initDatePickr = () => {
  flatpickr(".datepicker", {
    enableTime: true,
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  });

}

export {initDatePickr}
