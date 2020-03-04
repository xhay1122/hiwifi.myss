module("luci.controller.admin_web.flyss", package.seeall)

function index()
	entry({"admin_web", "flyss"}, template("admin_web/flyss/index"), _("status"), 700, true)
	entry({"admin_web", "flyss", "ss_ajax"}, template("admin_web/flyss/ss_ajax"), _("status"), 700, true)
end
