{strip}
{if $SOCIALBUTT.light}
  <a title="Share on Google +" href="https://plus.google.com/share?url={$SOCIALBUTT.share_url|urlencode}&hl={$SOCIALBUTT.GOOGLE.lang}" 
    onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=390,width=480');return false;" target="_blank" rel="nofollow">
    <img src="{$ROOT_URL}{$SOCIALBUTT_PATH}template/images/google_{$SOCIALBUTT.GOOGLE.size}.png" alt="Google+" height="20" width="20"></a>
{else}
  {combine_script id='google_plusone' load='footer' path='https://apis.google.com/js/plusone.js'}
  <script type="text/javascript">window.___gcfg = {ldelim}lang: '{$SOCIALBUTT.GOOGLE.lang}'};</script>
  <div style="display:inline-block;" class="g-plusone" data-size="{$SOCIALBUTT.GOOGLE.size}" data-annotation="{$SOCIALBUTT.GOOGLE.annotation}" data-href="{$SOCIALBUTT.share_url}" data-recommendations="false"></div>
{/if}
{/strip}