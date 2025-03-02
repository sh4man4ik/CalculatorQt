#pragma once

#include <QObject>
#include <QQmlContext>

class Calculator : public QObject
{
	Q_OBJECT

public:
	Calculator(QObject *parent = nullptr);
	~Calculator();

	Q_INVOKABLE void calculate(QString expressionQ);
};
