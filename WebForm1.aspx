<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Information Form</title>
    <style type="text/css">
        body {
            background-color: #f1f1f1;
            font-family: Arial, sans-serif;
            font-size: 14px;
        }
        
        h1 {
            text-align: center;
            font-size: 34px;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        
        table {
            border-collapse: collapse;
            width: 100%;
            max-width: 800px;
            margin: 0 auto;
        }
        
        td, th {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #93e5ef;
            font-weight: bold;
        }
        
        input[type="text"], button {
            padding: 6px;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        
        button {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        
        button:hover {
            background-color: #3e8e41;
        }
        #Button1, #Button2, #Button3, #Button4 {
        margin-right: 10px;
        padding: 10px 20px;
        font-size: 16px;
    }
        
        #GridView1 {
            margin-top: 20px;
            border-collapse: collapse;
            width: 100%;
        }
        
        #GridView1 th, #GridView1 td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        #GridView1 th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
  
        #GridView1 {
    opacity: 0;
    animation: fadeIn 1s forwards;
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="position: relative;
  z-index: 2;"class="container">
            <h1>Personal Information Form</h1>
            <table>
                <tr>
                    <th>Firstname</th>
                    <td><asp:TextBox ID="firstname" runat="server" /></td>
                </tr>
                <tr>
                    <th>Lastname</th>
                    <td><asp:TextBox ID="lastname" runat="server" /></td>
                </tr>
                <tr>
                    <th>City</th>
                    <td><asp:TextBox ID="city" runat="server" /></td>
                </tr>
                </table>
            <table>
                <tr>

                   
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click1" />
                        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click1" />
                        <asp:Button ID="Button4" runat="server" Text="View" OnClick="Button4_Click1" />
                    </td>
                </tr>
                <tr>
                    
                    <th> Id update*</th>
                    <td><asp:TextBox ID="oldid" runat="server" /></td>
                </tr>
                </table>
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                
                </div>   
        <ul style=""class="background">
  <li style="left: 58%; width: 134px; height: 134px; bottom: -134px; animation-delay: 1s;"></li>
  <li style="left: 35%; width: 119px; height: 119px; bottom: -119px; animation-delay: 2s;"></li>
  <li style="left: 0%; width: 147px; height: 147px; bottom: -147px; animation-delay: 8s;"></li>
  <li style="left: 30%; width: 163px; height: 163px; bottom: -163px; animation-delay: 13s;"></li>
  <li style="left: 29%; width: 154px; height: 154px; bottom: -154px; animation-delay: 7s;"></li>
  <li style="left: 32%; width: 175px; height: 175px; bottom: -175px; animation-delay: 2s;"></li>
  <li style="left: 59%; width: 152px; height: 152px; bottom: -152px; animation-delay: 22s;"></li>
  <li style="left: 60%; width: 157px; height: 157px; bottom: -157px; animation-delay: 6s;"></li>
  <li style="left: 80%; width: 145px; height: 145px; bottom: -145px; animation-delay: 8s;"></li>
  <li style="left: 7%; width: 130px; height: 130px; bottom: -130px; animation-delay: 19s;"></li>
</ul>

<style>
  @keyframes animate {
      0%{
          transform: translateY(0) rotate(0deg);
          opacity: 1;
          border-radius: 0;
      }
      100%{
          transform: translateY(-1000px) rotate(720deg);
          opacity: 0;
          border-radius: 50%;
      }
  }

  .background {
      position: fixed;
      width: 100vw;
      height: 100vh;
      top: 0;
      left: 0;
      margin: 0;
      padding: 0;
      background: #4e54c8;
      overflow: hidden;
  }

  .background li {
      position: absolute;
      display: block;
      list-style: none;
      width: 20px;
      height: 20px;
      background: rgba(255, 255, 255, 0.2);
      animation: animate 19s linear infinite;
  }
</style>

        
        </form>
    <head>
	<title>Image Slider</title>
	<style>
		<style>
#hcg-slider-1 .hcg-slide-container {
	width: auto;
	height: auto;
}
.hcg-slider {
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
}
.hcg-slide-container {
	max-width: 100%;
	display: inline-block;
	position: relative;
}
.hcg-slides {
	display: none;
	overflow: hidden;
	justify-content: center;
	align-items: center;
	border-radius: 5px;
	border: solid 1px #a0a0a0;
}
.hcg-slides img {
	max-width: 100%;
	max-height: 100%;
	display: inline-block;
}
.hcg-slide-text {
	color: #ffffff;
	font-size: 14px;
	padding: 3px 5px;
	position: absolute;
	bottom: 0;
	border-radius: 5px;
	left: 50%;
	text-align: center;
	text-shadow: 0 0 2px #000;
	background-color: rgba(255,255,255,0.30);
	display: inline-block;
	transform: translate(-50%, -5px);
}
#hcg-slide-prev, #hcg-slide-next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	padding: 16px;
	margin-top: -22px;
	color: #fff;
	font-weight: bold;
	font-size: 18px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	text-decoration: none;
	text-shadow: 1px 1px 5px #686868;
}
#hcg-slide-next {
	right: 0;
	border-radius: 3px 0 0 3px;
}
#hcg-slide-prev {
	left: 0;
	border-radius: 0 3px 3px 0;
}
#hcg-slide-prev:hover, #hcg-slide-next:hover {
	background-color: #000c;
}
.hcg-slide-dot-control {
	margin-top: 10px;
	text-align: center;
}
.hcg-slide-dot {
	cursor: pointer;
	height: 13px;
	width: 13px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
}
.hcg-slide-dot.dot-active {
	background-color: #717171;
}
.hcg-slide-number {
	color: #ffffff;
	font-size: 12px;
	padding: 4px 7px;
	position: absolute;
	border-radius: 5px;
	top: 5px;
	left: 5px;
	background-color: rgba(255,255,255,0.30);
}
/************CSS Animation***********/

.animated { 
	animation-name: fadeIn; 
	animation-duration: 1s;
}
@keyframes fadeIn {
	0% {
		opacity: 0;
	}
	100% {
		opacity: 1;
	}
}
.fadeIn {
	animation-name: fadeIn;
}


</style>
	</style>
</head>
<body>
	<!-- HTML markup goes here -->
	<div id="hcg-slider-1" class="hcg-slider">
		<div class="hcg-slide-container">
			<div class="hcg-slider-body">
				<a class="hcg-slides animated" style="display:flex">
					<span class="hcg-slide-number">1/5</span>
					<img src="https://www.html-code-generator.com/images/slider/1.png" alt="image 1">
					<span class="hcg-slide-text">image 1</span>
				</a>
			</div>
			<a href="#" id="hcg-slide-prev">❮</a>
			<a href="#" id="hcg-slide-next">❯</a>
		</div>
		<div class="hcg-slide-dot-control"></div>
	</div>

	<script>
        (() => {
            //If you want to add more images, add the link name and URL image URL in the array list below.
            const images_list = [
                {
                    "url": "https://media.istockphoto.com/id/1311598658/photo/businessman-trading-online-stock-market-on-teblet-screen-digital-investment-concept.jpg?s=612x612&w=0&k=20&c=HYlIJ1VFfmHPwGkM3DtVIFNLS5ejfMMzEQ81ko534ak=",
                    "alt": "",
                    "name": "Marketing",
                    "link": ""
                },
                {
                    "url": "https://images.pexels.com/photos/905163/pexels-photo-905163.jpeg?auto=compress&cs=tinysrgb&w=600",
                    "alt": "",
                    "name": "Marketing",

                    "link": ""
                },
                {
                    "url": "https://media.istockphoto.com/id/1284549946/photo/digital-marketing-concept-online-advertisement.jpg?s=612x612&w=0&k=20&c=KWrdOaQbNF41m3TDDSn9JqvKDeHuMtvDiMPJOCGP4d0=",
                    "alt": "",
                    "name": "Marketing",

                    "link": ""
                },
                {
                    "url": "https://media.istockphoto.com/id/625727674/photo/marketing-strategy-business-concept.jpg?s=612x612&w=0&k=20&c=_GUELZSwaDEs9_8kwffVuPI9En0fIzhPu_JlRkO7LkE=",
                    "alt": "",
                    "name": "Marketing",

                    "link": ""
                },
                {
                    "url": "https://media.istockphoto.com/id/1337400405/photo/collage-business-concept-composition-with-human-hands-control-taking-pieces-of-muclticolored.jpg?s=612x612&w=0&k=20&c=QBh_Kxsup7DTrwC7BTRLgwG7nqL1VCv3cpbagXU_E5A=",
                    "alt": "",
                    "name": "Marketing",

                    "link": ""
                }
            ];

            // generated by https://www.html-code-generator.com/html/image-slideshow-generator
            let slider_id = document.querySelector("#hcg-slider-1");

            // append all images
            let dots_div = "";
            let images_div = "";
            for (let i = 0; i < images_list.length; i++) {
                // if no link without href="" tag
                let href = (images_list[i].link == "" ? "" : ' href="' + images_list[i].link + '"');
                images_div += '<a' + href + ' class="hcg-slides animated"' + (i === 0 ? ' style="display:flex"' : '') + '>' +
                    '<span class="hcg-slide-number">' + (i + 1) + '/' + images_list.length + '</span>' +
                    '<img src="' + images_list[i].url + '" alt="' + images_list[i].name + '">' +
                    '<span class="hcg-slide-text">' + images_list[i].name + '</span>' +
                    '</a>';
                dots_div += '<a href="#" class="hcg-slide-dot' + (i === 0 ? ' dot-active' : '') + '" data-id="' + i + '"></a>';
            }
            slider_id.querySelector(".hcg-slider-body").innerHTML = images_div;
            slider_id.querySelector(".hcg-slide-dot-control").innerHTML = dots_div;

            let slide_index = 0;

            const images = slider_id.querySelectorAll(".hcg-slides");
            const dots = slider_id.querySelectorAll(".hcg-slide-dot");
            const prev_button = slider_id.querySelector("#hcg-slide-prev");
            const next_button = slider_id.querySelector("#hcg-slide-next");

            const showSlides = () => {
                if (slide_index > images.length - 1) {
                    slide_index = 0;
                }
                if (slide_index < 0) {
                    slide_index = images.length - 1;
                }
                for (let i = 0; i < images.length; i++) {
                    images[i].style.display = "none";
                    dots[i].classList.remove("dot-active");
                    if (i == slide_index) {
                        images[i].style.display = "flex";
                        dots[i].classList.add("dot-active");
                    }
                }
            }

            prev_button.addEventListener("click", event => {
                event.preventDefault();
                slide_index--;
                showSlides();
            }, false);

            next_button.addEventListener("click", event => {
                event.preventDefault();
                slide_index++;
                showSlides();
            }, false);

            const dot_click = event => {
                event.preventDefault();
                slide_index = event.target.dataset.id;
                showSlides();
            }

            for (let i = 0; i < dots.length; i++) {
                dots[i].addEventListener("click", dot_click, false);
            }
        })();
    </script>
</body>
            </body>
    </html>

    
