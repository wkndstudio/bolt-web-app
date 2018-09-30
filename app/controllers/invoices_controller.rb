class InvoicesController < ApplicationController
    def show
      @invoice = InvoicingLedgerItem.find(params[:id])
      respond_to do |format|
        format.html
        format.pdf do
          render pdf: "file_name"   # Excluding ".pdf" extension.
        end
      end
    end
  end