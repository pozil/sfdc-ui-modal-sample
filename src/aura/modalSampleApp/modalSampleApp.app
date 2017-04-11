<aura:application extends="force:slds">
    <aura:attribute name="message" type="String"/>

    <!-- Begin static Modal -->
    <ui_modal:modal aura:id="theStaticModal" title="Modal title" isDirectional="true" isLarge="false" hasCloseIcon="true">
    	<!-- Modal tagline -->
        <aura:set attribute="tagline">
            Here’s a tagline if you need it.
        	It is allowed to extend across mulitple lines, so I’m making up content to show that to you.
        	It may contain <a href="javascript:void(0);">links or be a link</a>.
        </aura:set>

        <!-- Modal body -->
    	<div>Hello, this is the <b>modal</b>'s message.<br/>
    	It supports <u>any</u> type of markup including Lightning components</div>

        <!-- Modal footer -->
    	<aura:set attribute="footer">
			<lightning:button label="Cancel" onclick="{!c.onCancel}" />
			<lightning:button variant="brand" label="Confirm" onclick="{!c.onConfirm}" />
		</aura:set>
    </ui_modal:modal>
    <!-- End static Modal -->

    <!-- Application body below -->
    <div class="slds-grid slds-grid--frame slds-grid--align-center slds-grid--vertical-align-center">
      <div>
        <p class="slds-m-around--medium">{!v.message}</p>
        <lightning:button label="Open static modal" onclick="{!c.onOpenStaticModal}" />
        <lightning:button label="Open dynamic modal" onclick="{!c.onOpenDynamicModal}" />
      </div>
    </div>

    {!v.body}

</aura:application>
