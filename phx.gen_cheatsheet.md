## Phx Gen Cheatsheet

For phx.gen.____ CLI commands

### Example phx.gen.context

This will generate a context, a schema, a migration and a test case.

The phx.gen.context task takes a number of arguments, the module name of the context, the module name of the schema, the resource name, and a list of column_name:type attributes.

`mix phx.gen.context Accounts User users name:string age:integer`

### Example phx.gen.html

#### Generates context + schema + migrations + html forms

```bash
mix phx.gen.html Stripe StrAccount str_accounts user_id:references:user country:string  entity_type:string rep_name:string rep_dob:string rep_address:string rep_id:string company_name:string company_address:string company_id:string verification_doc:boolean nonprofit:boolean phone:string email:string
```

```bash
mix phx.gen.html Stripe StrExternalAccount str_external_accounts str_account_id:references:str_accounts object:string account:string account_holder_name:string account_holder_type:string bank_name:string country:string currency:string routing_number:string
```
