package transaction

import (
	"github.com/jutionck/go-api-rumahmakan/models"
	"github.com/jutionck/go-api-rumahmakan/repository/transaction"
	"github.com/jutionck/go-api-rumahmakan/utils"
)

type transactionUsecase struct {
	transactionRepo transaction.TransactionRepoInterface
}

func (t transactionUsecase) GetAllTransactions() ([]*models.Transaction, error) {
	transactions, err := t.transactionRepo.GetAllTransactions()
	if err != nil {
		return nil, err
	}
	return transactions, nil
}


func (t transactionUsecase) SqlInsertTransaction(transaction *models.Transaction) error {
	err := utils.ValidateInputNotNil(transaction.NotaNumber, transaction.NotaDate)
	if err != nil {
		return err
	}
	//cekStok, err := utils.CekStok(transaction.DetailTransaction.DetailFood.FoodCode)
	//fmt.Println(cekStok)
	err = t.transactionRepo.SqlInsertTransaction(transaction)
	if err != nil {
		return err
	}
	return nil
}

func NewTransactionUsecase(transactionRepo transaction.TransactionRepoInterface) transactionUsecase {
	return transactionUsecase{transactionRepo: transactionRepo}
}