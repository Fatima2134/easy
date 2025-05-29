<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>EasyAssist Web</title>
  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <div class="container">
    <h1>EasyAssist Web</h1>
    <p>Select an app to get help or open it:</p>
    <div class="app-buttons">
      <button onclick="openApp('whatsapp')">WhatsApp Web</button>
      <button onclick="openApp('instagram')">Instagram</button>
      <button onclick="openApp('tiktok')">TikTok</button>
      <button onclick="openApp('youtube')">YouTube</button>
    </div>
    <div id="instructions" class="instructions"></div>
  </div>
  <script src="script.js"></script>
</body>
</html>
body {
  font-family: Arial, sans-serif;
  background-color: #f0f4f8;
  margin: 0;
  padding: 20px;
  text-align: center;
}

.container {
  max-width: 500px;
  margin: auto;
  padding: 20px;
  background: white;
  border-radius: 12px;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

h1 {
  color: #00695c;
}

button {
  margin: 10px;
  padding: 12px 20px;
  font-size: 16px;
  border: none;
  background-color: #009688;
  color: white;
  border-radius: 8px;
  cursor: pointer;
}

button:hover {
  background-color: #00796b;
}

.instructions {
  margin-top: 20px;
  padding: 15px;
  background: #e0f2f1;
  border-left: 5px solid #00796b;
  text-align: left;
}

const appInstructions = {
  whatsapp: "To use WhatsApp Web: Make sure you have WhatsApp on your phone. Click the button above, then scan the QR code using WhatsApp on your mobile device.",
  instagram: "To use Instagram: Click the button to open Instagram. Login if necessary, then use the navigation bar to access messages, posts, and reels.",
  tiktok: "To use TikTok: Click the button to open TikTok. Browse videos, use the search bar, and explore trending content.",
  youtube: "To use YouTube: Click the button to open YouTube. Use the search bar or sign in to access your subscriptions and playlists."
};

function openApp(app) {
  const urls = {
    whatsapp: "https://web.whatsapp.com/",
    instagram: "https://www.instagram.com/",
    tiktok: "https://www.tiktok.com/",
    youtube: "https://www.youtube.com/"
  };

  // Show instructions
  document.getElementById("instructions").textContent = appInstructions[app];

  // Open the app in a new tab
  window.open(urls[app], "_blank");
}
