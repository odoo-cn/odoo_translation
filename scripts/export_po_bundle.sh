# !/bin/bash

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=account.csv -l zh_CN --modules=account,account_accountant,account_analytic_analysis,account_analytic_default,account_analytic_plans,account_anglo_saxon,account_asset,account_bank_statement_extensions,account_budget,account_cancel,account_chart,account_check_writing,account_followup,account_payment,account_sequence,account_test,account_voucher,analytic,purchase_analytic_plans,sale_analytic_plans

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=product.csv -l zh_CN --modules=product,product_email_template,product_expiry,product_extended,product_margin,product_visible_discount

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=stock.csv -l zh_CN --modules=stock,stock_account,stock_dropshipping,stock_invoice_directly,stock_landed_costs,stock_picking_wave,sale_stock,procurement,procurement_jit,procurement_jit_stock

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=project.csv -l zh_CN --modules=project,project_issue,project_issue_sheet,project_timesheet

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=hr.csv -l zh_CN --modules=hr,hr_applicant_document,hr_attendance,hr_contract,hr_evaluation,hr_expense,hr_gamification,hr_holidays,hr_payroll,hr_payroll_account,hr_recruitment,hr_timesheet,hr_timesheet_sheet

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=mrp.csv -l zh_CN --modules=mrp,mrp_byproduct,mrp_operations,mrp_repair,sale_mrp

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=base.csv -l zh_CN --modules=base,web,web_analytics,web_api,web_calendar,web_diagram,web_gantt,web_graph,web_kanban,web_kanban_gauge,web_kanban_sparkline

mv *.csv /home/ubuntu/bundle/

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=account.po -l zh_CN --modules=account,account_accountant,account_analytic_analysis,account_analytic_default,account_analytic_plans,account_anglo_saxon,account_asset,account_bank_statement_extensions,account_budget,account_cancel,account_chart,account_check_writing,account_followup,account_payment,account_sequence,account_test,account_voucher,analytic,purchase_analytic_plans,sale_analytic_plans

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=product.po -l zh_CN --modules=product,product_email_template,product_expiry,product_extended,product_margin,product_visible_discount

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=stock.po -l zh_CN --modules=stock,stock_account,stock_dropshipping,stock_invoice_directly,stock_landed_costs,stock_picking_wave,sale_stock,procurement,procurement_jit,procurement_jit_stock

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=project.po -l zh_CN --modules=project,project_issue,project_issue_sheet,project_timesheet

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=hr.po -l zh_CN --modules=hr,hr_applicant_document,hr_attendance,hr_contract,hr_evaluation,hr_expense,hr_gamification,hr_holidays,hr_payroll,hr_payroll_account,hr_recruitment,hr_timesheet,hr_timesheet_sheet

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=mrp.po -l zh_CN --modules=mrp,mrp_byproduct,mrp_operations,mrp_repair,sale_mrp

python openerp-server -c t.conf --stop-after-init -d i18n --i18n-export=base.po -l zh_CN --modules=base,web,web_analytics,web_api,web_calendar,web_diagram,web_gantt,web_graph,web_kanban,web_kanban_gauge,web_kanban_sparkline

mv *.po /home/ubuntu/bundle


cd /home/ubuntu/bundle

tar -cf bundle.tar bundle/
