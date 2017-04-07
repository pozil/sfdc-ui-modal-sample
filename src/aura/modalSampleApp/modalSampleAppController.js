({
	onOpenStaticModal : function(component, event, helper) {
		component.find("theStaticModal").openModal();
	},

	onConfirm : function(component, event, helper) {
		component.find("theStaticModal").closeModal();
        component.set("v.message", "You clicked the 'Confirm' button.");
	},

	onCancel : function(component, event, helper) {
		component.find("theStaticModal").closeModal();
        component.set("v.message", "You clicked the 'Cancel' button.");
	},

	onOpenDynamicModal : function(component, event, helper) {
		component.set("v.message", "");
        // We create progammatically a modal alert box
        $A.createComponent(
			"c:modal", {'aura:id': 'theDynamicModal'},
			function(newModal, status, errorMessage){
				//Add the new modal to the app body
				if (status === "SUCCESS") {
					var body = component.get("v.body");
					body.push(newModal);
					component.set("v.body", body);
                    // Pre-configure the title, message and an OK button
					newModal.openModalAlert("Alert", "Hello world!");
				} else {
					console.log("Failed to create modal");
					console.log("Error status: " + status);
					console.log("Error message: " + errorMessage);
				}
			}
		);
	}
})