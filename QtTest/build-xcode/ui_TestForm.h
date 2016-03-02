/********************************************************************************
** Form generated from reading UI file 'TestForm.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TESTFORM_H
#define UI_TESTFORM_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_TestForm
{
public:
    QVBoxLayout *vboxLayout;
    QGroupBox *groupBox;
    QHBoxLayout *hboxLayout;
    QListWidget *theListBox;
    QVBoxLayout *vboxLayout1;
    QLineEdit *theListItem;
    QHBoxLayout *hboxLayout1;
    QSpacerItem *spacerItem;
    QPushButton *addButton;
    QHBoxLayout *hboxLayout2;
    QSpacerItem *spacerItem1;
    QPushButton *removeButton;
    QPushButton *pushButton;
    QSpacerItem *spacerItem2;
    QHBoxLayout *hboxLayout3;
    QPushButton *pushButton_2;
    QPushButton *pushButton_3;
    QSpacerItem *spacerItem3;
    QPushButton *cancelButton;
    QSpacerItem *spacerItem4;

    void setupUi(QWidget *TestForm)
    {
        if (TestForm->objectName().isEmpty())
            TestForm->setObjectName(QStringLiteral("TestForm"));
        TestForm->resize(500, 402);
        vboxLayout = new QVBoxLayout(TestForm);
#ifndef Q_OS_MAC
        vboxLayout->setSpacing(6);
#endif
        vboxLayout->setContentsMargins(8, 8, 8, 8);
        vboxLayout->setObjectName(QStringLiteral("vboxLayout"));
        groupBox = new QGroupBox(TestForm);
        groupBox->setObjectName(QStringLiteral("groupBox"));
        hboxLayout = new QHBoxLayout(groupBox);
#ifndef Q_OS_MAC
        hboxLayout->setSpacing(6);
#endif
        hboxLayout->setContentsMargins(8, 8, 8, 8);
        hboxLayout->setObjectName(QStringLiteral("hboxLayout"));
        theListBox = new QListWidget(groupBox);
        theListBox->setObjectName(QStringLiteral("theListBox"));

        hboxLayout->addWidget(theListBox);

        vboxLayout1 = new QVBoxLayout();
#ifndef Q_OS_MAC
        vboxLayout1->setSpacing(6);
#endif
        vboxLayout1->setContentsMargins(0, 0, 0, 0);
        vboxLayout1->setObjectName(QStringLiteral("vboxLayout1"));
        theListItem = new QLineEdit(groupBox);
        theListItem->setObjectName(QStringLiteral("theListItem"));
        QSizePolicy sizePolicy(static_cast<QSizePolicy::Policy>(0), static_cast<QSizePolicy::Policy>(0));
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(theListItem->sizePolicy().hasHeightForWidth());
        theListItem->setSizePolicy(sizePolicy);

        vboxLayout1->addWidget(theListItem);

        hboxLayout1 = new QHBoxLayout();
#ifndef Q_OS_MAC
        hboxLayout1->setSpacing(6);
#endif
        hboxLayout1->setContentsMargins(0, 0, 0, 0);
        hboxLayout1->setObjectName(QStringLiteral("hboxLayout1"));
        spacerItem = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        hboxLayout1->addItem(spacerItem);

        addButton = new QPushButton(groupBox);
        addButton->setObjectName(QStringLiteral("addButton"));

        hboxLayout1->addWidget(addButton);


        vboxLayout1->addLayout(hboxLayout1);

        hboxLayout2 = new QHBoxLayout();
#ifndef Q_OS_MAC
        hboxLayout2->setSpacing(6);
#endif
        hboxLayout2->setContentsMargins(0, 0, 0, 0);
        hboxLayout2->setObjectName(QStringLiteral("hboxLayout2"));
        spacerItem1 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        hboxLayout2->addItem(spacerItem1);

        removeButton = new QPushButton(groupBox);
        removeButton->setObjectName(QStringLiteral("removeButton"));

        hboxLayout2->addWidget(removeButton);


        vboxLayout1->addLayout(hboxLayout2);

        pushButton = new QPushButton(groupBox);
        pushButton->setObjectName(QStringLiteral("pushButton"));

        vboxLayout1->addWidget(pushButton);

        spacerItem2 = new QSpacerItem(188, 214, QSizePolicy::Minimum, QSizePolicy::Expanding);

        vboxLayout1->addItem(spacerItem2);


        hboxLayout->addLayout(vboxLayout1);


        vboxLayout->addWidget(groupBox);

        hboxLayout3 = new QHBoxLayout();
#ifndef Q_OS_MAC
        hboxLayout3->setSpacing(6);
#endif
        hboxLayout3->setContentsMargins(0, 0, 0, 0);
        hboxLayout3->setObjectName(QStringLiteral("hboxLayout3"));
        pushButton_2 = new QPushButton(TestForm);
        pushButton_2->setObjectName(QStringLiteral("pushButton_2"));

        hboxLayout3->addWidget(pushButton_2);

        pushButton_3 = new QPushButton(TestForm);
        pushButton_3->setObjectName(QStringLiteral("pushButton_3"));

        hboxLayout3->addWidget(pushButton_3);

        spacerItem3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        hboxLayout3->addItem(spacerItem3);

        cancelButton = new QPushButton(TestForm);
        cancelButton->setObjectName(QStringLiteral("cancelButton"));

        hboxLayout3->addWidget(cancelButton);

        spacerItem4 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        hboxLayout3->addItem(spacerItem4);


        vboxLayout->addLayout(hboxLayout3);


        retranslateUi(TestForm);
        QObject::connect(cancelButton, SIGNAL(clicked()), TestForm, SLOT(close()));
        QObject::connect(removeButton, SIGNAL(clicked()), theListBox, SLOT(clear()));

        QMetaObject::connectSlotsByName(TestForm);
    } // setupUi

    void retranslateUi(QWidget *TestForm)
    {
        TestForm->setWindowTitle(QApplication::translate("TestForm", "Form", 0));
        groupBox->setTitle(QApplication::translate("TestForm", "GroupBox", 0));
        addButton->setText(QApplication::translate("TestForm", "Add", 0));
        removeButton->setText(QApplication::translate("TestForm", "Clear", 0));
        pushButton->setText(QApplication::translate("TestForm", "PushButton", 0));
        pushButton_2->setText(QApplication::translate("TestForm", "PushButton", 0));
        pushButton_3->setText(QApplication::translate("TestForm", "PushButton", 0));
        cancelButton->setText(QApplication::translate("TestForm", "Quit", 0));
    } // retranslateUi

};

namespace Ui {
    class TestForm: public Ui_TestForm {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TESTFORM_H
