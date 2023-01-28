<div class="card-header with-icon">
  <i class="fa fa-user-secret mr10" style="color: #ffb307"></i>{__("Privacy")}
</div>
<form class="js_ajax-forms" data-url="users/settings.php?edit=privacy">
  <div class="card-body">
    {if $system['chat_enabled']}
      <div class="form-table-row">
        <div class="avatar">
          {include file='__svg_icons.tpl' icon="chat" width="40px" height="40px"}
        </div>
        <div>
          <div class="form-control-label h6">{__("Chat Enabled")}</div>
          <div class="form-text d-none d-sm-block">{__("If chat disabled you will appear offline and will no see who is online too")}</div>
        </div>
        <div class="text-right">
          <label class="switch" for="user_chat_enabled">
            <input type="checkbox" name="user_chat_enabled" id="user_chat_enabled" {if $user->_data['user_chat_enabled']}checked{/if}>
            <span class="slider round"></span>
          </label>
        </div>
      </div>
    {/if}

    <div class="form-table-row">
      <div class="avatar">
        {include file='__svg_icons.tpl' icon="account_activation" width="40px" height="40px"}
      </div>
      <div>
        <div class="form-control-label h6">{__("Email you with our newsletter")}</div>
        <div class="form-text d-none d-sm-block">{__("From time to time we send newsletter email to all of our members")}</div>
      </div>
      <div class="text-right">
        <label class="switch" for="user_privacy_newsletter">
          <input type="checkbox" name="user_privacy_newsletter" id="user_privacy_newsletter" {if $user->_data['user_privacy_newsletter']}checked{/if}>
          <span class="slider round"></span>
        </label>
      </div>
    </div>

    <div class="row">
      {if $system['pokes_enabled']}
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Who can poke you")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-hand-point-right"></i></span>
            </div>
            <select class="form-control" name="user_privacy_poke">
              <option {if $user->_data['user_privacy_poke'] == "public"}selected{/if} value="public">
                {__("Everyone")}
              </option>
              <option {if $user->_data['user_privacy_poke'] == "friends"}selected{/if} value="friends">
                {__("Friends")}
              </option>
              <option {if $user->_data['user_privacy_poke'] == "me"}selected{/if} value="me">
                {__("No One")}
              </option>
            </select>
          </div>
        </div>
      {/if}

      {if $system['gifts_enabled']}
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Who can send you gifts")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-gift"></i></span>
            </div>
            <select class="form-control" name="user_privacy_gifts">
              <option {if $user->_data['user_privacy_gifts'] == "public"}selected{/if} value="public">
                {__("Everyone")}
              </option>
              <option {if $user->_data['user_privacy_gifts'] == "friends"}selected{/if} value="friends">
                {__("Friends")}
              </option>
              <option {if $user->_data['user_privacy_gifts'] == "me"}selected{/if} value="me">
                {__("No One")}
              </option>
            </select>
          </div>
        </div>
      {/if}

      {if $system['wall_posts_enabled']}
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Who can post on your wall")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-newspaper"></i></span>
            </div>
            <select class="form-control" name="user_privacy_wall">
              <option {if $user->_data['user_privacy_wall'] == "public"}selected{/if} value="public">
                {__("Everyone")}
              </option>
              <option {if $user->_data['user_privacy_wall'] == "friends"}selected{/if} value="friends">
                {__("Friends")}
              </option>
              <option {if $user->_data['user_privacy_wall'] == "me"}selected{/if} value="me">
                {__("Just Me")}
              </option>
            </select>
          </div>
        </div>
      {/if}

      <div class="form-group col-md-6">
        <label class="form-control-label">{__("Who can see your")} {__("gender")}</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-venus-mars"></i></span>
          </div>
          <select class="form-control" name="user_privacy_gender">
            <option {if $user->_data['user_privacy_gender'] == "public"}selected{/if} value="public">
              {__("Everyone")}
            </option>
            <option {if $user->_data['user_privacy_gender'] == "friends"}selected{/if} value="friends">
              {__("Friends")}
            </option>
            <option {if $user->_data['user_privacy_gender'] == "me"}selected{/if} value="me">
              {__("Just Me")}
            </option>
          </select>
        </div>
      </div>

      {if $system['relationship_info_enabled']}
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Who can see your")} {__("relationship")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-heart"></i></span>
            </div>
            <select class="form-control" name="user_privacy_relationship">
              <option {if $user->_data['user_privacy_relationship'] == "public"}selected{/if} value="public">
                {__("Everyone")}
              </option>
              <option {if $user->_data['user_privacy_relationship'] == "friends"}selected{/if} value="friends">
                {__("Friends")}
              </option>
              <option {if $user->_data['user_privacy_relationship'] == "me"}selected{/if} value="me">
                {__("Just Me")}
              </option>
            </select>
          </div>
        </div>
      {/if}

      <div class="form-group col-md-6">
        <label class="form-control-label">{__("Who can see your")} {__("birthdate")}</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-birthday-cake"></i></span>
          </div>
          <select class="form-control" name="user_privacy_birthdate">
            <option {if $user->_data['user_privacy_birthdate'] == "public"}selected{/if} value="public">
              {__("Everyone")}
            </option>
            <option {if $user->_data['user_privacy_birthdate'] == "friends"}selected{/if} value="friends">
              {__("Friends")}
            </option>
            <option {if $user->_data['user_privacy_birthdate'] == "me"}selected{/if} value="me">
              {__("Just Me")}
            </option>
          </select>
        </div>
      </div>

      <div class="form-group col-md-6">
        <label class="form-control-label">{__("Who can see your")} {__("basic info")}</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-user"></i></span>
          </div>
          <select class="form-control" name="user_privacy_basic">
            <option {if $user->_data['user_privacy_basic'] == "public"}selected{/if} value="public">
              {__("Everyone")}
            </option>
            <option {if $user->_data['user_privacy_basic'] == "friends"}selected{/if} value="friends">
              {__("Friends")}
            </option>
            <option {if $user->_data['user_privacy_basic'] == "me"}selected{/if} value="me">
              {__("Just Me")}
            </option>
          </select>
        </div>
      </div>

      {if $system['work_info_enabled']}
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Who can see your")} {__("work info")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-briefcase"></i></span>
            </div>
            <select class="form-control" name="user_privacy_work">
              <option {if $user->_data['user_privacy_work'] == "public"}selected{/if} value="public">
                {__("Everyone")}
              </option>
              <option {if $user->_data['user_privacy_work'] == "friends"}selected{/if} value="friends">
                {__("Friends")}
              </option>
              <option {if $user->_data['user_privacy_work'] == "me"}selected{/if} value="me">
                {__("Just Me")}
              </option>
            </select>
          </div>
        </div>
      {/if}

      {if $system['location_info_enabled']}
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Who can see your")} {__("location info")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-map-marker-alt"></i></span>
            </div>
            <select class="form-control" name="user_privacy_location">
              <option {if $user->_data['user_privacy_location'] == "public"}selected{/if} value="public">
                {__("Everyone")}
              </option>
              <option {if $user->_data['user_privacy_location'] == "friends"}selected{/if} value="friends">
                {__("Friends")}
              </option>
              <option {if $user->_data['user_privacy_location'] == "me"}selected{/if} value="me">
                {__("Just Me")}
              </option>
            </select>
          </div>
        </div>
      {/if}

      {if $system['education_info_enabled']}
        <div class="form-group col-md-6">
          <label class="form-control-label">{__("Who can see your")} {__("education info")}</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text"><i class="fas fa-university"></i></span>
            </div>
            <select class="form-control" name="user_privacy_education">
              <option {if $user->_data['user_privacy_education'] == "public"}selected{/if} value="public">
                {__("Everyone")}
              </option>
              <option {if $user->_data['user_privacy_education'] == "friends"}selected{/if} value="friends">
                {__("Friends")}
              </option>
              <option {if $user->_data['user_privacy_education'] == "me"}selected{/if} value="me">
                {__("Just Me")}
              </option>
            </select>
          </div>
        </div>
      {/if}

      <div class="form-group col-md-6">
        <label class="form-control-label">{__("Who can see your")} {__("other info")}</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-folder-plus"></i></span>
          </div>
          <select class="form-control" name="user_privacy_other">
            <option {if $user->_data['user_privacy_other'] == "public"}selected{/if} value="public">
              {__("Everyone")}
            </option>
            <option {if $user->_data['user_privacy_other'] == "friends"}selected{/if} value="friends">
              {__("Friends")}
            </option>
            <option {if $user->_data['user_privacy_other'] == "me"}selected{/if} value="me">
              {__("Just Me")}
            </option>
          </select>
        </div>
      </div>

      <div class="form-group col-md-6">
        <label class="form-control-label">{__("Who can see your")} {__("friends")}</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-user-friends"></i></span>
          </div>
          <select class="form-control" name="user_privacy_friends">
            <option {if $user->_data['user_privacy_friends'] == "public"}selected{/if} value="public">
              {__("Everyone")}
            </option>
            <option {if $user->_data['user_privacy_friends'] == "friends"}selected{/if} value="friends">
              {__("Friends")}
            </option>
            <option {if $user->_data['user_privacy_friends'] == "me"}selected{/if} value="me">
              {__("Just Me")}
            </option>
          </select>
        </div>
      </div>

      <div class="form-group col-md-6">
        <label class="form-control-label">{__("Who can see your")} {__("followers/followings")}</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-user-friends"></i></span>
          </div>
          <select class="form-control" name="user_privacy_followers">
            <option {if $user->_data['user_privacy_followers'] == "public"}selected{/if} value="public">
              {__("Everyone")}
            </option>
            <option {if $user->_data['user_privacy_followers'] == "friends"}selected{/if} value="friends">
              {__("Friends")}
            </option>
            <option {if $user->_data['user_privacy_followers'] == "me"}selected{/if} value="me">
              {__("Just Me")}
            </option>
          </select>
        </div>
      </div>

      <div class="form-group col-md-6">
        <label class="form-control-label">{__("Who can see your")} {__("photos")}</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-images"></i></span>
          </div>
          <select class="form-control" name="user_privacy_photos">
            <option {if $user->_data['user_privacy_photos'] == "public"}selected{/if} value="public">
              {__("Everyone")}
            </option>
            <option {if $user->_data['user_privacy_photos'] == "friends"}selected{/if} value="friends">
              {__("Friends")}
            </option>
            <option {if $user->_data['user_privacy_photos'] == "me"}selected{/if} value="me">
              {__("Just Me")}
            </option>
          </select>
        </div>
      </div>

      <div class="form-group col-md-6">
        <label class="form-control-label">{__("Who can see your")} {__("liked pages")}</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-flag"></i></span>
          </div>
          <select class="form-control" name="user_privacy_pages">
            <option {if $user->_data['user_privacy_pages'] == "public"}selected{/if} value="public">
              {__("Everyone")}
            </option>
            <option {if $user->_data['user_privacy_pages'] == "friends"}selected{/if} value="friends">
              {__("Friends")}
            </option>
            <option {if $user->_data['user_privacy_pages'] == "me"}selected{/if} value="me">
              {__("Just Me")}
            </option>
          </select>
        </div>
      </div>

      <div class="form-group col-md-6">
        <label class="form-control-label">{__("Who can see your")} {__("joined groups")}</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-users"></i></span>
          </div>
          <select class="form-control" name="user_privacy_groups">
            <option {if $user->_data['user_privacy_groups'] == "public"}selected{/if} value="public">
              {__("Everyone")}
            </option>
            <option {if $user->_data['user_privacy_groups'] == "friends"}selected{/if} value="friends">
              {__("Friends")}
            </option>
            <option {if $user->_data['user_privacy_groups'] == "me"}selected{/if} value="me">
              {__("Just Me")}
            </option>
          </select>
        </div>
      </div>

      <div class="form-group col-md-6">
        <label class="form-control-label">{__("Who can see your")} {__("joined events")}</label>
        <div class="input-group">
          <div class="input-group-prepend">
            <span class="input-group-text"><i class="fas fa-calendar"></i></span>
          </div>
          <select class="form-control" name="user_privacy_events">
            <option {if $user->_data['user_privacy_events'] == "public"}selected{/if} value="public">
              {__("Everyone")}
            </option>
            <option {if $user->_data['user_privacy_events'] == "friends"}selected{/if} value="friends">
              {__("Friends")}
            </option>
            <option {if $user->_data['user_privacy_events'] == "me"}selected{/if} value="me">
              {__("Just Me")}
            </option>
          </select>
        </div>
      </div>
    </div>

    <!-- success -->
    <div class="alert alert-success mb0 x-hidden"></div>
    <!-- success -->

    <!-- error -->
    <div class="alert alert-danger mb0 x-hidden"></div>
  </div>
  <div class="card-footer text-right">
    <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
  </div>
</form>