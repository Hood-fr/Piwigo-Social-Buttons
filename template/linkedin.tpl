{strip}
{if $SOCIALBUTT.light}
  <a title="Share on LinkedIn" href="https://www.linkedin.com/shareArticle?mini=true&url={$SOCIALBUTT.share_url|urlencode}&title={$PAGE_TITLE|cat:' - '|cat:$GALLERY_TITLE}&source={$GALLERY_TITLE}&summary={if !empty($CONTENT_DESCRIPTION)}{$CONTENT_DESCRIPTION|strip_tags:false|escape:'url'}{else}{{$GALLERY_TITLE}|strip_tags:false|escape:'url'}{/if}{if !empty($COMMENT_IMG)}{$COMMENT_IMG|strip_tags:false|escape:'url'}{/if}"
    onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=390,width=480');return false;" target="_blank" rel="nofollow">
    <img src="{$ROOT_URL}{$SOCIALBUTT_PATH}template/images/linkedin_share_button.png" alt="LinkedIn" height="20" width="20"></a>
{else}
  {combine_script id='linkedin_share' load='footer' path='https://platform.linkedin.com/in.js'}
  <script type="text/javascript">lang: '{$SOCIALBUTT.LINKEDIN.lang}'</script>
  <script type="IN/Share" data-url="{$SOCIALBUTT.share_url}" data-counter="{$SOCIALBUTT.TWITTER.counter}" data-title="{$PAGE_TITLE|cat:' | '|cat:$GALLERY_TITLE}"></script>
{/if}
{/strip}
