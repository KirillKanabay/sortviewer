// quicksort.cpp : Этот файл содержит функцию "main". Здесь начинается и заканчивается выполнение программы.
//

#include <iostream>
#include <ctime>

using namespace std;

const int arrSize = 10;
int arr[arrSize];

void quickSort(int left, int right) {
	/*Границы массивы*/
	int newLeft = left;
	int newRight = right;
	
	/*Опорный элемент массива*/
	int pivot = arr[(left + right) / 2];

	do {
		while (arr[newLeft] < pivot) {
			newLeft++;
		}
		while (arr[newRight] > pivot) {
			newRight--;
		}
		if (newLeft <= newRight) {
			/*обмен значений*/
			int tempElement = arr[newLeft];
			arr[newLeft] = arr[newRight];
			arr[newRight] = tempElement;

			newLeft = newLeft + 1;
			newRight = newRight - 1;
		}
	} while (newLeft <= newRight);
	/*рекурсивный вызов сортировки для "меньших" элементов*/
	if (left < newRight) {
		quickSort(left, newRight);
	}
	/*сортировка - для "больших" элементов*/
	if (newLeft < right) {
		quickSort(newLeft, right);
	}
}

int main()
{
	srand(time(0)); //для правильной работы рандома
	setlocale(LC_ALL, "Russian"); //русский текст в консоли

	for (int i = 0; i < arrSize; i++) {
		arr[i] = rand() % 99 + 1;
	}
	cout << "Массив до сортировки:";
	for (int i = 0; i < arrSize; i++) {
		cout << arr[i] << ' ';
	}
	quickSort(0, arrSize - 1);
	cout << endl;
	cout << "Массив после сортировки:";
	for (int i = 0; i < arrSize; i++) {
		cout << arr[i] << ' ';
	}
}

// Запуск программы: CTRL+F5 или меню "Отладка" > "Запуск без отладки"
// Отладка программы: F5 или меню "Отладка" > "Запустить отладку"

// Советы по началу работы 
//   1. В окне обозревателя решений можно добавлять файлы и управлять ими.
//   2. В окне Team Explorer можно подключиться к системе управления версиями.
//   3. В окне "Выходные данные" можно просматривать выходные данные сборки и другие сообщения.
//   4. В окне "Список ошибок" можно просматривать ошибки.
//   5. Последовательно выберите пункты меню "Проект" > "Добавить новый элемент", чтобы создать файлы кода, или "Проект" > "Добавить существующий элемент", чтобы добавить в проект существующие файлы кода.
//   6. Чтобы снова открыть этот проект позже, выберите пункты меню "Файл" > "Открыть" > "Проект" и выберите SLN-файл.
