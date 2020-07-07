package transaction

import (
	"github.com/jutionck/go-api-rumahmakan/models"
	"github.com/jutionck/go-api-rumahmakan/repository/transaction"
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
	err := t.transactionRepo.SqlInsertTransaction(transaction)
	if err != nil {
		return err
	}
	return nil
}

func NewTransactionUsecase(transactionRepo transaction.TransactionRepoInterface) transactionUsecase {
	return transactionUsecase{transactionRepo: transactionRepo}
}