package transaction

import (
	"database/sql"
	"github.com/jutionck/go-api-rumahmakan/models"
	"github.com/jutionck/go-api-rumahmakan/utils"
	"log"
	"time"
)

type TransactionRepository struct {
	Conn *sql.DB
}

func (t *TransactionRepository) GetAllTransactions() ([]*models.Transaction, error) {
	var transactions []*models.Transaction
	rows, err := t.Conn.Query(utils.SELECT_ALL_TRANSACTION)
	if err != nil {
		log.Print(err)
	}
	for rows.Next() {
		transaction := models.Transaction{}
		if err := rows.Scan(&transaction.NotaNumber,&transaction.NotaDate,&transaction.CustomerName,&transaction.DetailTransaction.DetailFood.FoodCode,&transaction.DetailTransaction.DetailFood.FoodName,&transaction.DetailTransaction.DetailFood.FoodPrice,&transaction.DetailTransaction.Qty,&transaction.DetailTransaction.AddFood.FoodAdd,&transaction.DetailTransaction.AddFood.PriceAdd,&transaction.Total); err != nil {
			log.Fatalf("%v", err)
			return nil, err
		} else {
			transactions = append(transactions, &transaction)
		}
	}
	return transactions, nil
}

func (t *TransactionRepository) SqlInsertTransaction(transaction *models.Transaction) error {
	createdAt := time.Now().Format(utils.FORMART_DATE)
	transaction.NotaDate = createdAt
	tx, err := t.Conn.Begin()
	query := utils.INSERT_TRANSACTION
	_, err = tx.Exec(query,transaction.NotaNumber,createdAt,transaction.CustomerName)

	if err != nil {
		tx.Rollback()
		log.Fatal(err)
	}
	query2 := utils.INSERT_TRANSACTION_DETAIL
	_, err = tx.Exec(query2,transaction.NotaNumber,transaction.DetailTransaction.DetailFood.FoodCode,transaction.DetailTransaction.AddFood.FoodAddCode,transaction.DetailTransaction.Qty)

	if err != nil {
		tx.Rollback()
		log.Fatal(err)
	}
	return tx.Commit()
}

func NewTrasactionRepository(db *sql.DB) TransactionRepoInterface {
	return &TransactionRepository{Conn: db}
}