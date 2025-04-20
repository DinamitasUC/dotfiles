let t;document.addEventListener("DOMContentLoaded",async()=>{const e=document.getElementById("app");if(!e)return console.error("No iframe found");e.src="https://tasksboard.com/chrome",e.allow="clipboard-read; clipboard-write";try{t=await chrome.tabs.query({active:!0,currentWindow:!0}).then(r=>r[0])}catch(r){console.error(`❌ Error while setting initTab 
▶️ Details: ${JSON.stringify(r)}`)}});
