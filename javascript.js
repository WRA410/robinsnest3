// Example 26-14: javascript.js

canvas               = O('logo')
context              = canvas.getContext('2d')
context.font         = 'bold italic 75px Book Antiqua'
context.textBaseline = 'top'
image                = new Image()
image.src            = 'pidgey.png'

image.onload = function()
{
  gradient = context.createLinearGradient(0, 0, 0, 89)
  gradient.addColorStop(0.00, '#faa')
  gradient.addColorStop(0.66, '#f00')
  context.fillStyle = gradient
  context.fillText(  "  Weeb    Connect", 0, 0)
  context.strokeText("  Weeb    Connect", 0, 0)
  context.drawImage(image, 210, 0)
}

function O(i) { return typeof i == 'object' ? i : document.getElementById(i) }
function S(i) { return O(i).style                                            }
function C(i) { return document.getElementsByClassName(i)                    }
