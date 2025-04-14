document.addEventListener("DOMContentLoaded", function() {
  const friendRows = document.querySelectorAll('div[id^="friend_"]'); // Select all divs with id starting with "friend_"

  friendRows.forEach(function(row) {
    row.addEventListener('click', function() {
      const actionButtons = row.querySelector('.action-buttons'); // Find the buttons inside the clicked div
      
      // Toggle visibility of the action buttons
      if (actionButtons.style.display === 'none' || actionButtons.style.display === '') {
        actionButtons.style.display = 'block';
      } else {
        actionButtons.style.display = 'none';
      }
    });
  });
});
