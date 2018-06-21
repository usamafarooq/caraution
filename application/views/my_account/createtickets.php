<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="top-notify top-notify-activate">
                <div class="top-notify__item__desc">
                    <span class="top-notify__attention-icon"></span>
                    <strong>Dear saim, in order to BID please activate your membership!</strong>
                    <a class="button yBtn_24 yBtn_h32" href="<?php echo base_url('account_activation') ?>">Activate</a>
                </div>
            </div>
        </div>
    </div>
    <div id="content">
        <h2 class="account-header hidden-xs hidden-sm">Create Tickets</h2>
        <div class="account-table row">
            <div class="col-sm-12 col-md-3 side-menu account-menu">
                <div id="profile-side-menu" class="searchBox">
                    <div class="group-title block_header responsive_header">
                        Account Menu </div>
                    <div class="responsive_box">
                        <ul class="level1">
                            <li class="active">
                                <a href="<?php echo base_url('My_account') ?>">My Account</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('My_account/Watchlist') ?>"> Watchlist (0)</a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('My_account/saved_search') ?>">Saved Searches (0)</a>
                            </li>
                        </ul>
                        <div class="sublevel droparrow">Tickets </div>
                        <ul class="level2 ">
                            <li>
                                <a href="/en/account/openTickets">Open Tickets</a>
                            </li>
                            <li>
                                <a href="/en/account/closedTickets">Closed Tickets</a>
                            </li>
                            <li>
                                <a href="/en/account/tickets">Submit New Ticket</a>
                            </li>
                        </ul>
                        <div class="sublevel droparrow">Bids </div>
                        <ul class="level2">
                            <li>
                                <a href="/en/account/current_bids">Current Bids (0)</a>
                            </li>
                            <li>
                                <a href="/en/account/won_bids">Won Bids (0)</a>
                            </li>
                            <li>
                                <a href="/en/account/lost_bids">Lost Bids (0)</a>
                            </li>
                        </ul>
                        <div class="sublevel droparrow">Transactions </div>
                        <ul class="level2">
                            <li>
                                <a href="/en/account/transactionList">Transaction List (0)</a>
                            </li>
                            <li>
                                <a href="/en/account/deposits">Deposits (0)</a>
                            </li>
                            <li>
                                <a href="/en/account/refunds">Refunds (0)</a>
                            </li>
                        </ul>
                        <div class="sublevel droparrow">Document Center </div>
                        <ul class="level2">
                            <li>
                                <a href="/en/account/esign">Waiting for e-signature</a>
                            </li>
                            <li>
                                <a href="/en/account/esign_processing">Processing</a>
                            </li>
                            <li>
                                <a href="/en/account/esign_completed">Completed</a>
                            </li>
                        </ul>
                        <div class="sublevel droparrow">Shipping </div>
                        <ul class="level2">
                            <li>
                                <a href="/en/account/shipping_in_process">In Process (0)</a>
                            </li>
                            <li>
                                <a href="/en/account/shipping_delivered">Completed (0)</a>
                            </li>
                            <li>
                                <a href="/en/account/shipping_custom">Custom Shipping Quote</a>
                            </li>
                        </ul>
                        <ul class="level1">
                            <li>
                                <a href="/en/account/bidding_limit">Bidding Limit</a>
                            </li>
                        </ul>
                        <div class="sublevel droparrow">Profile </div>
                        <ul class="level2">
                            <li>
                                <a href="/en/account/personal_information">Personal Information</a>
                            </li>
                            <li>
                                <a href="/en/account/billing_information">Billing Information</a>
                            </li>
                            <li>
                                <a href="/en/account/login_and_password">Login and Password</a>
                            </li>
                            <li>
                                <a href="/en/account/documents">Documents</a>
                            </li>
                            <li>
                                <a href="/en/account/membership">Membership</a>
                            </li>
                        </ul>
                        <ul class="level1">
                            <li>
                                <a href="/en/account/logout">Log Out</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
               <div class="col-sm-12 col-md-9">
                <h2 class="account-header hidden-md hidden-lg">Create tickets </h2>
     
                   <div id="ajax-content">

<div class="form-group create_ticket block-style">
    <!--    <div class="group-title">--><!--</div>-->
    <form enctype="multipart/form-data" id="kaykao-form" action="/en/account/tickets" method="post">    <div class="form-row1">
        <div class="kayako_left">
                        <label class="select-label1">
                <select name="KaykaoForm[priority]" id="KaykaoForm_priority" class="hasCustomSelect" style="-webkit-appearance: menulist-button; width: 187.563px; position: absolute; opacity: 0; height: 40px; font-size: 14px;">
<option value="" selected="selected">Select Priority</option>
<option value="1">Normal</option>
<option value="2">Medium</option>
<option value="3">High</option>
<option value="4">Urgent</option>
<option value="5">Emegrency</option>
<option value="6">Critical</option>
</select><span class="custom-select" style="display: inline-block;"><span class="custom-selectInner" style="width: 160px; display: inline-block;">Select Priority</span></span>            </label>
                    </div>
        <div class="kayako_right">
                        <input placeholder="Subject" name="KaykaoForm[subject]" id="KaykaoForm_subject" type="text">                    </div>
        <div class="clearfix"></div>
    </div>
    <div class="form-row1"> 
        <div class="message-input">
                        <textarea placeholder="Message" name="KaykaoForm[message]" id="KaykaoForm_message"></textarea>                    </div>
    </div>
    <div class="form-row1">
                <input id="ytKaykaoForm_file" type="hidden" value="" name="KaykaoForm[file]"><input name="KaykaoForm[file]" id="KaykaoForm_file" type="file">    </div>
    <div class="form-row1 send">
        <input class="button yBtn_24" type="submit" name="yt0" value="Send">    </div>
    </form></div>        </div>
          </div>
            </div>
            
        </div>
    </div>
</div>
        </div>
    </div>
</div>