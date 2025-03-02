#include <QString>
#include <iostream>
#include <QQmlApplicationEngine>
#include "Calculator.h"
#include "exprtk.hpp"

extern QQmlApplicationEngine *globalEngine;

Calculator::Calculator(QObject *parent)
	: QObject(parent)
{}

Calculator::~Calculator()
{}

void Calculator::calculate(QString expressionQ)
{
    std::string expression = expressionQ.toStdString();

    exprtk::expression<double> expr;
    exprtk::parser<double> parser;

    parser.compile(expression, expr);

    double result = expr.value();

    std::string resultString = std::to_string(result);
    resultString.erase(resultString.find_last_not_of('0') + 1, std::string::npos);

    if (resultString[resultString.size() - 1] == '.') {
        resultString.erase(resultString.size() - 1);
    }

    result = ::atof(resultString.c_str());

    QObject* window = globalEngine->rootObjects().first();
    QObject* textResult = window->findChild<QObject*>("textResult");
    textResult->setProperty("text", QVariant(result));
}