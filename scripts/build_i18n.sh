# !/bin/bash

HOME_DIR=/home/openerp
OE_DIR=/opt/openerp/server
CONFIG=/opt/openerp/t.conf
DB=i18n

if [ ! -d $HOME_DIR/build ]; then
    mkdir $HOME_DIR/build
fi

if [ ! -d $HOME_DIR/function ]; then
    mkdir $HOME_DIR/function
fi

if [ ! -d $HOME_DIR/odoo ]; then
    mkdir $HOME_DIR/odoo
fi

if [ ! -d $HOME_DIR/odoo/addons ]; then
    mkdir $HOME_DIR/odoo/addons
fi

if [ ! -d $HOME_DIR/odoo/openerp ]; then
    mkdir $HOME_DIR/odoo/openerp
fi

if [ ! -d $HOME_DIR/odoo/openerp/addons ]; then
    mkdir $HOME_DIR/odoo/openerp/addons
fi

for m in `cat $HOME_DIR/addons.txt`
do 

if [ ! -d $HOME_DIR/odoo/addons/$m ]; then
    mkdir $HOME_DIR/odoo/addons/$m
fi

if [ ! -d $HOME_DIR/odoo/addons/$m/i18n ]; then
    mkdir $HOME_DIR/odoo/addons/$m/i18n
fi

python $OE_DIR/openerp-server -c $CONFIG --stop-after-init -d $DB --i18n-export=$HOME_DIR/odoo/addons/$m/i18n/zh_CN.po -l zh_CN --modules=$m

done

python $OE_DIR/openerp-server -c $CONFIG --stop-after-init -d $DB --i18n-export=account.po -l zh_CN --modules=account,account_accountant,account_analytic_analysis,account_analytic_default,account_analytic_plans,account_anglo_saxon,account_asset,account_bank_statement_extensions,account_budget,account_cancel,account_chart,account_check_writing,account_followup,account_payment,account_sequence,account_test,account_voucher,analytic,purchase_analytic_plans,sale_analytic_plans

python $OE_DIR/openerp-server -c $CONFIG --stop-after-init -d $DB --i18n-export=product.po -l zh_CN --modules=product,product_email_template,product_expiry,product_extended,product_margin,product_visible_discount

python $OE_DIR/openerp-server -c $CONFIG --stop-after-init -d $DB --i18n-export=stock.po -l zh_CN --modules=stock,stock_account,stock_dropshipping,stock_invoice_directly,stock_landed_costs,stock_picking_wave,sale_stock,procurement,procurement_jit,procurement_jit_stock

python $OE_DIR/openerp-server -c $CONFIG --stop-after-init -d $DB --i18n-export=project.po -l zh_CN --modules=project,project_issue,project_issue_sheet,project_timesheet

python $OE_DIR/openerp-server -c $CONFIG --stop-after-init -d $DB --i18n-export=hr.po -l zh_CN --modules=hr,hr_applicant_document,hr_attendance,hr_contract,hr_evaluation,hr_expense,hr_gamification,hr_holidays,hr_payroll,hr_payroll_account,hr_recruitment,hr_timesheet,hr_timesheet_sheet

python $OE_DIR/openerp-server -c $CONFIG --stop-after-init -d $DB --i18n-export=mrp.po -l zh_CN --modules=mrp,mrp_byproduct,mrp_operations,mrp_repair,sale_mrp

python $OE_DIR/openerp-server -c $CONFIG --stop-after-init -d $DB --i18n-export=base.po -l zh_CN --modules=base,web,web_analytics,web_api,web_calendar,web_diagram,web_gantt,web_graph,web_kanban,web_kanban_gauge,web_kanban_sparkline

python $OE_DIR/openerp-server -c $CONFIG --stop-after-init -d $DB --i18n-export=website.po -l zh_CN --modules=website,website_blog,website_certification,website_crm,website_crm_partner_assign,website_customer,website_event,website_event_sale,website_event_track,website_forum,website_forum_doc,website_gengo,website_google_map,website_hr,website_hr_recruitment,website_instantclick,website_livechat,website_mail,website_mail_group,website_membership,website_partner,website_payment,website_project,website_quote,website_report,website_sale,website_sale_delivery,website_sale_options,website_twitter

mv -f *.po $HOME_DIR/function/

cp -rf $HOME_DIR/odoo/addons/base  $HOME_DIR/odoo/openerp/addons/
cp -rf $HOME_DIR/odoo  $HOME_DIR/build/
cp -rf $HOME_DIR/functional  $HOME_DIR/build/

cd $HOME_DIR/
tar -cf build.tar  build/

echo done
