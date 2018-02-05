<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MediaQueries.aspx.cs" Inherits="ShoppingList.Media_Queries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr class="clear-all">
    <div class="col-md-12">
        <div class="content" itemprop="articleBody">
            <p>Now that <a href="https://www.emailonacid.com/blog/article/industry-news/gmail-update-embedded-styles-and-media-queries" mce_href="https://www.emailonacid.com/blog/article/industry-news/gmail-update-embedded-styles-and-media-queries" title="Gmail Update: Support for Embedded Styles and Media Queries has Arrived!">Gmail is supporting media queries</a> in some clients, we have seen a resurgence in interest about how to use them. Read on to learn about media queries in HTML email.<br>
            </p>
            <h3>What are media queries?</h3>
            <p>A media query consists of an optional media type (all, handheld, print, TV and so on) and any number of optional expressions that limit when the query will trigger, such as width, pixel-density or orientation. Media queries are part of CSS3, and enable developers to customize their content for different presentations of their content.</p>
            <p>At a basic level, media queries enable an email developer to create responsive email by detecting the width of the display. For this purpose, the most commonly used query is max-width. At any width that is less than the max-width specified, all of the CSS within the query will take effect.</p>


            <p>Media queries can also be used to target certain resolutions or even specific email clients. Media queries can be used instead of or in addition to <a href="https://www.emailonacid.com/blog/article/email-development/a-fluid-hybrid-design-primer" mce_href="https://www.emailonacid.com/blog/article/email-development/a-fluid-hybrid-design-primer" title="A Fluid Hybrid Design Primer">fluid hybrid design</a>.<br>
            </p>

            <div class="hr"></div>
            <h3>How min and max width queries work</h3>
            <p>How media queries function can be a bit confusing. Let's take a look at the queries which are commonly used in email.</p>
            <h4>Max-Width</h4>
            <p>Here is an example of a max-width query.</p>
            <pre><code class="language-markup">@media only screen and (<span style="color: rgb(51, 102, 255);" id="" mce_style="color: #3366ff;">max-width</span>: <span style="color: rgb(255, 0, 0);" id="" mce_style="color: #ff0000;">600px</span>)  {...}</code></pre>
            <p>What this query really means, is "If [device width] is <span style="color: rgb(51, 102, 255);" id="" mce_style="color: #3366ff;">less than or equal to </span><span style="color: rgb(255, 0, 0);" id="" mce_style="color: #ff0000;">600px</span>, then do {...}"</p>
            <p>So if the email is opened on an iPhone 5S, with a screen width of 320px, the media query will trigger and all of the styles contained in { ... } will take effect.</p>
            <h4>Min-Width</h4>
            <p>Here is an example of a min-width query.</p>
            <pre><code class="language-markup">@media only screen and (<span style="color: rgb(51, 102, 255);" id="" mce_style="color: #3366ff;">min-width</span>: <span style="color: rgb(255, 0, 0);" id="" mce_style="color: #ff0000;">600px</span>)  {...}</code></pre>
            <p>What this query really means, is "If [device width] is <span style="color: rgb(51, 102, 255);" id="" mce_style="color: #3366ff;">greater than or equal to</span> <span style="color: rgb(255, 0, 0);" id="" mce_style="color: #ff0000;">600px</span>, then do {...}"</p>
            <p>So if the email is opened on an iPhone 5S, with a screen width of 320px, the media query <i>will not </i>trigger and the styles contained in { ... } <i>will not </i>take effect.</p>

            <h4>Combining Min-Width and Max-Width</h4>
            <p>These queries can be used together to target a specific range of screen sizes.</p>
            <pre><code class="language-markup">@media only screen and (max-width: 600px) and (min-width: 400px)  {...}</code></pre>
            <p>The query above will trigger only for screens that are 600-400px wide. This can be used to target specific devices with known widths.</p>

            <div class="hr"></div>
            <h3>Breakpoints</h3>
            <p>Most media queries are set to trigger at certain screen widths or breakpoints. Exactly what these should be set to is a matter of some debate amongst email developers. </p>


            <p>iPhones and iPads provide us with a few easy breakpoints to start from. Coding styles for these specific clients will make sure our emails look great on these screens. Androids, on the other hand, vary widely in screen size because there are so many different manufacturers and devices. I recommend creating two to four breakpoints, based on popular Apple devices, which will cover most devices. </p>

            <ul>
                <li>Breakpoint 1 (iPhone 5S): 320px</li>
                <li>Breakpoint 2 (iPhone 6+): 414px</li>
                <li>Breakpoint 3 (iPad Mini): 703px</li>
                <li>Breakpoint 4 (iPad Air): 768px</li>
            </ul>
            <p>
                <br>
            </p>
            <p>Breakpoints 3 and 4 are optional, as most emails will look fine showing the desktop version on an iPad or large tablet. You could even get away with using just breakpoint 2, if you code your container tables to expand to 100% width (and not a set width, which may or may not match the device well).</p>

            <h4>Taking advantage of precedence</h4>
            <p>Remember, CSS rules that appear later in the embedded styles override earlier rules if both have the same specificity. This means that you can set rules for tablets by putting the Breakpoint 4 media query first, then set styles for mobile devices with a Breakpoint 2 media query. Because the Breakpoint 2 styles come after the Breakpoint 4 styles, your mobile styles will override your tablet styles when the breakpoint 2 query is triggered. This means that you don't have to set min-width for any of your media queries, as long as they are arranged in the correct order.</p>


            <p>Here is an example order.</p>
            <ul>
                <li>Desktop styles (not in a media query)</li>
                <li>Tablet Styles (max-width: 768px)</li>
                <li>Mobile Styles (max-width: 414px)</li>
            </ul>

            <div class="hr space"></div>
            <h3>Coding for media queries</h3>
            <p>When coding an email to be responsive using media queries, a common technique is to create tables with align = "left" and a special class to target inside the media queries. For example, a two-column section might look like this.</p>


            <pre><code class="language-markup">&lt;table border="0" cellpadding="0" cellspacing="0" align="center" class="deviceWidth"&gt;
	&lt;tr&gt;
		&lt;td style="padding:10px 0"&gt;
            &lt;table align="left" width="49%" border="0" class="deviceWidth"&gt;
                &lt;tr&gt;
                    &lt;td&gt;
						
                    &lt;/td&gt;
                &lt;/tr&gt;
            &lt;/table&gt;
            &lt;table align="left" width="49%" border="0" class="deviceWidth"&gt;
                &lt;tr&gt;
                    &lt;td&gt;

                    &lt;/td&gt;
                &lt;/tr&gt;
            &lt;/table&gt;
        &lt;/td&gt;
    &lt;/tr&gt;
&lt;/table&gt;</code></pre>


            <p>Each of the tables with 49% width can fit side by side when on "desktop" view. 49% is used instead of 50% because Outlook can be very picky about what fits side-by-side and what doesn't. You can make 50% width fit if you set all of your styles just right (no border, padding, etc). You can make a 3 Column section using similar code, but use three tables set to 32% width instead.</p>


            <p>When the responsive code kicks in, we'll want to make these content blocks 100% width for phones, so that they fill the whole screen. This can be accomplished for most phones with a single media query.</p>


            <pre><code class="language-markup">@media only screen and (max-width: 414px) {
  .deviceWidth {width:280px!important; padding:0;}	
  .center {text-align: center!important;}	 
    }</code></pre>


            <p>You can continue to add media queries with special styles to cover as many different screen sizes as you'd like. You should also add code to your media queries to optimize font-size and line-height for each screen size, improving readability for your recipients.</p>


            <p>If you'd like to start working with a template like this, grab our "Emailology" template from the <a href="https://www.emailonacid.com/resources" mce_href="https://www.emailonacid.com/resources" title="Sign up for a free account!" target="_blank">Resources section</a>. You can get a free account to gain access to all of our resources (like templates, white papers, webinars and client tips and tricks).</p>

            <div class="hr"></div>
            <h3>Other Media Queries</h3>
            <p>You can do a few other interesting things with media queries. The below uses are most relevant to email, but check out <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries" mce_href="https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries/Using_media_queries" title="Using media queries" target="_blank">MDN's page</a> for even more media query techniques.</p>
            <h4>Orientation</h4>
            <p>You can use the following media query to target device orientation. Unfortunately, this query doesn't work well in iOS Mail. In most versions, the landscape media query will always trigger regardless of orientation.</p>


            <pre><code class="language-markup">@media screen and (orientation: landscape) { ...  }</code></pre>


            <h4>Targeting Yahoo! Mail</h4>
            <p>You can use this simple query to write styles that will trigger only in Yahoo! Mail. This can be used to address layout or rendering issues that you see only in Yahoo! Mail, or to include messages intended only for Yahoo! users.</p>

            <pre><code class="language-markup">@media (yahoo) { ...  }</code></pre>
            <h4>Pixel-density</h4>
            <p>This media query can be used to target only devices that have a certain pixel density. Combined with webkit, this can effectively let the email developer target only iOS devices. This can be useful when adding interactive code that is known only to work in iOS Mail.</p>


            <pre><code class="language-markup">@media screen and (-webkit-min-device-pixel-ratio: 2) { ...  }</code></pre>
            <h4>Media queries for print</h4>
            <p>By setting specific styles for print, you can ensure your email will be easy to print and look great. This is especially important for coupons or tickets. You can hide useless elements, like links and buttons, and display only the part of the email that is important to print.</p>


            <pre><code class="language-markup">@media print { ...  }</code></pre>

            <div class="hr"></div>
            <h3>Media query support chart</h3>
            <p>Media queries have fairly wide support now that Gmail has enabled classes, IDs and embedded styles. Check out the support chart below.</p>


            <table class="research_table mceItemTable" style="width: 550px; margin-left: auto; margin-right: auto;" cellspacing="1" cellpadding="0" align="center">
                <tbody>
                    <tr>
                        <td class="td_blue" colspan="5" align="center"><span mce_name="strong" mce_style="font-weight: bold;" style="font-weight: bold;" class="Apple-style-span">
                            <h2>Media Query Support</h2>
                        </span></td>
                    </tr>
                    <tr>
                        <th align="left"><span mce_name="strong" mce_style="font-weight: bold;" style="font-weight: bold;" class="Apple-style-span">Environment</span></th>
                        <th align="center"><span mce_name="strong" mce_style="font-weight: bold;" style="font-weight: bold;" class="Apple-style-span">Email Client</span></th>
                        <th align="center"><span mce_name="strong" mce_style="font-weight: bold;" style="font-weight: bold;" class="Apple-style-span">Media Queries Supported?</span></th>
                    </tr>
                    <tr>
                        <td align="left">Webmail</td>
                        <td align="left">AOL</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail</td>
                        <td align="left">Gmail</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail</td>
                        <td align="left">Google Apps</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail</td>
                        <td align="left">Yahoo! Mail</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail</td>
                        <td align="left">Outlook.com</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail</td>
                        <td align="left">Office 365</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Desktop</td>
                        <td align="left">Apple Mail</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Desktop</td>
                        <td align="left">Lotus Notes</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Desktop</td>
                        <td align="left">Outlook 2000-2016</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Desktop</td>
                        <td align="left">Outlook 2011 (Mac)</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Desktop</td>
                        <td align="left">Thunderbird</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Mobile</td>
                        <td align="left">iOS Mail</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Mobile</td>
                        <td align="left">Gmail App (Android)</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Mobile</td>
                        <td align="left">Gmail App (iOS)</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">BOL</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Comcast</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Free.fr</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Freenet.de</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">GMX</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">La Poste</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Libero</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Mail.ru</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Nate</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Naver</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Orange.fr</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">QQ</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">SFR.fr</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">T-Online.de</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Telstra</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Terra</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Web.de</td>
                        <td class="passed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">Webmail (Regional)</td>
                        <td align="left">Yandex.ru</td>
                        <td class="failed" align="center">
                            <br mce_bogus="1">
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="hr space"></div>
            <h3>What do you do with media queries?</h3>
            <p>Let us know your favorite uses for media queries in the comments below!</p>
            <h3>Don't guess, test</h3>
            <p>Media queries can be confusing and take trial and error to perfect. That's why we offer you 7 days free with Email on Acid, so you can ensure your media queries, and your emails, are perfect before you hit send.</p>
            <p>
                <br>
            </p>
            <div class="btnWrap2" style="margin: 10px 0px 20px; float: left; width: 100%; text-align: center;">
                <a class="btn" href=" https://www.emailonacid.com/pricing&#10;" mce_href=" https://www.emailonacid.com/pricing
"
                    title="Test for free!" target="new">TEST TODAY</a>
            </div>
        </div>

        <div class="taglist">
        </div>
    </div>
    <div class="col-md-12">
        <h2>About the Author</h2>
        <div class="bio-box">

        </div>
    </div>
    <div class="row adjacent">
        <div class="col-sm-6 prev">
            <a href="/blog/article/email-development/what_is_dkim_everything_you_need_to_know_about_digital_signatures" rel="prev">
                <h2>Previous Post</h2>
                <span>What is DKIM? Everything You Need to Know About Digital Signatures</span>
            </a>
        </div>

        <div class="col-sm-6 next">
            <a href="/blog/article/email-development/12_things_you_must_know_when_developing_for_gmail_and_gmail_mobile_apps" rel="next">
                <h2>Next Post</h2>
                <span>Developing HTML Emails for Gmail: 12 Things you MUST know</span>
            </a>
        </div>
    </div>

</asp:Content>