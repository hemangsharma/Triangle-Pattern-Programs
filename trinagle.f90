program triangle
  implicit none
  integer :: rows, i, j

  write (*, *) 'Enter the number of rows:'
  read (*, *) rows

  do i = 1, rows
    do j = 1, rows - i
      write (*, *) ' ', advance='no'
    end do
    do j = 1, i
      write (*, *) '* ', advance='no'
    end do
    write (*, *)
  end do
end program triangle