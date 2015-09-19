# Underline-Sample
How to draw an underline under "g"

# What's this

![Screenshot](https://raw.githubusercontent.com/ueda-keisuke/Underline-Sample/master/Underline-Sample/underline.png)

I found an underline under "g" is missing. This app is designed for finding a font whose underline doesn't disappear.

This app lists all installed fonts in your iOS device. The left text is a normal underline. The right underline is drawn in UIWebView with CSS.

    underline
    {
      text-decoration: none;
      border-bottom: 1px solid black;
      padding-bottom: 0px;
    }
    p
    {
      font: 100% \"\(fontname)\";
    }
      
    body
    {
      -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
      -webkit-touch-callout: none;
      -webkit-user-select: none;
    }
