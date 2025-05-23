package events_models

import (
	"time"

	"gorm.io/gorm"
)

type CompetitionCrew struct {
	ID uint `gorm:"primarykey"`

	CreatedAt time.Time
	UpdatedAt time.Time
	DeletedAt gorm.DeletedAt `gorm:"index"`

	TeamID uint            `gorm:"not null"`
	Team   CompetitionTeam `gorm:"foreignKey:TeamID;constraint:OnUpdate:CASCADE,OnDelete:CASCADE;"`

	ClassID uint
	Class   CompetitionClass `gorm:"foreignKey:ClassID;constraint:OnUpdate:SET NULL,OnDelete:SET NULL;"`

	Name         string `gorm:"not null"`
	IRacingCarId int    `gorm:"not null"`
}
