      program statistics
      implicit none
      real :: data(3)
      real :: range, mean, variance
      real :: findRange, findMean, findVariance

      call readData(data)
      range = findRange(data)
      mean = findMean(data)
      variance = findVariance(data)

      print *, 'Range:', range
      print *, 'Mean:', mean
      print *, 'Variance:', variance
      end

      subroutine readData(arr)
      implicit none
      real, intent(out) :: arr(3)
      integer :: i

      do i = 1, 3
         print *, 'Enter value ', i, ':'
         read *, arr(i)
      end do
      end

      real function findRange(arr)
      implicit none
      real, intent(in) :: arr(3)
      real :: minVal, maxVal
      integer :: i

      minVal = arr(1)
      maxVal = arr(1)
      do i = 2, 3
         if (arr(i) < minVal) minVal = arr(i)
         if (arr(i) > maxVal) maxVal = arr(i)
      end do
      findRange = maxVal - minVal
      end

      real function findMean(arr)
      implicit none
      real, intent(in) :: arr(3)
      integer :: i

      findMean = (arr(1) + arr(2) + arr(3)) / 3.0
      end

      real function findVariance(arr)
      implicit none
      real, intent(in) :: arr(3)
      real :: mean, sumSq
      integer :: i
      real :: findMean

      mean = findMean(arr)
      sumSq = 0.0
      do i = 1, 3
         sumSq = sumSq + (arr(i) - mean)**2
      end do
      findVariance = sumSq / 2.0
      end

