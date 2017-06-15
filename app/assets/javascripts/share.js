/*
  jQuery Social Buttons 0.0.1 https://github.com/Belyash/jquery-social-buttons
  (c) 2015 by Vasiliy Lazarev http://belyash.github.io/
  Updated: September 6th, 2015
  Apache License: http://www.apache.org/licenses/LICENSE-2.0
*/
(function ($, window, undefined) {
    var Socials,
        SocialButtons;

    Socials = {
      fb: {
          url: "https://graph.facebook.com/?id=",
          callback: function (data) {
              if (data && data.shares) {
                  this.count = data.shares;
              } else {
                  this.count = "";
              }
          },
          share: "https://www.facebook.com/sharer/sharer.php?u="
      },
      gp: {
          url: "https://graph.facebook.com/?id=",
          callback: function (data) {
              if (data && data.shares) {
                  this.count = data.shares;
              } else {
                  this.count = "";
              }
          },
          share: "https://plus.google.com/share?url"
      },
        tw: {
            url: "https://cdn.api.twitter.com/1/urls/count.json?url=",
            callback: function (data) {
                if (data && data.count) {
                    this.count = data.count;
                } else {
                    this.count = "";
                }
            },
            share: "https://twitter.com/intent/tweet?url="
        },
        ln: {
            url: "https://www.linkedin.com/countserv/count/share?format=jsonp&url=",
            callback: function (data) {
                if (data && data.count) {
                    this.count = data.count;
                } else {
                    this.count = "";
                }
            },
            share: "https://www.linkedin.com/cws/share?url="
        },
        pt: {
            url: "https://api.pinterest.com/v1/urls/count.json?url=",
            callback: function (data) {
                if (data && data.count) {
                    this.count = data.count;
                } else {
                    this.count = "";
                }
            },
            // Have some trouble with this
            share: "https://www.pinterest.com/pin/create/bookmarklet/?description=&url="
        }
    };

    SocialButtons = {
        init: function (options, el) {
            var self = this,
                $el = $(el),
                network = $el.data("social"),
                oSocial = Socials[network];


            if (oSocial) {

                options = options || {};

                if (options.url) {
                    self.shareUrl = options.url;
                } else {
                    self.shareUrl = window.location.href;
                }

                if (oSocial.url) {
                    $.getScript(
                        oSocial.url + self.shareUrl + "&callback=jQuery.fn.socialButtons." + network + "SetCount",
                        function () {
                            $el.attr("data-count", oSocial.count);
                        }
                    );
                }

                if (oSocial.share) {
                    $el.on("click.socialButtons", function () {
                        window.open(
                            oSocial.share + self.shareUrl,
                            '',
                            'menubar=no,toolbar=no,resizable=yes' +
                            ',scrollbars=yes' +
                            ',height=300,width=600'
                        );
                    });
                }
            }
        }
    };

    $.fn.socialButtons = function(options) {
        return this.each(function () {
            var socialButtons = Object.create(SocialButtons);

            if (SocialButtons[options]) {
                return SocialButtons[options].apply(this, Array.prototype.slice.call(arguments, 1));
            } else if (typeof options === 'object' || typeof options === 'undefined') {
                return socialButtons.init(options, this);
            } else {
                $.error('"' + options + '" method does not exist in jQuery.switcher');
            }
        });
    };

    for (var network in Socials) {
        if (Socials.hasOwnProperty(network)) {
            $.fn.socialButtons[network + "SetCount"] = Socials[network].callback.bind(Socials[network]);
        }
    }

}(jQuery, window));
