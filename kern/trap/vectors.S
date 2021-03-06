/* we allocate exception vectors in ram statically
   so we can trap exceptions as soon as possible
 */

#include <asm/regdef.h>
#include <asm/mipsregs.h>

#define RVECENT(f,n) \
  b f; nop
#define XVECENT(f, n) \
  b f; nop


/* must be 4K alignment */
.section .ramexv

.extern ramReserved
.extern ramExcHandle_tlbmiss
.extern ramExcHandle_general

.set noreorder

// 异常向量表，静态分配于内存的0xbfc00000~0xbfc00400处
.global __exception_vector
__exception_vector:
  RVECENT(ramExcHandle_tlbmiss,0) 
	RVECENT(ramReserved,1)
	RVECENT(ramReserved,2)
	RVECENT(ramReserved,3)
	RVECENT(ramReserved,4)
	RVECENT(ramReserved,5)
	RVECENT(ramReserved,6)
	RVECENT(ramReserved,7)
	RVECENT(ramReserved,8)
	RVECENT(ramReserved,9)
	RVECENT(ramReserved,10)
	RVECENT(ramReserved,11)
	RVECENT(ramReserved,12)
	RVECENT(ramReserved,13)
	RVECENT(ramReserved,14)
	RVECENT(ramReserved,15)
	RVECENT(ramReserved,16)
	RVECENT(ramReserved,17)
	RVECENT(ramReserved,18)
	RVECENT(ramReserved,19)
	RVECENT(ramReserved,20)
	RVECENT(ramReserved,21)
	RVECENT(ramReserved,22)
	RVECENT(ramReserved,23)
	RVECENT(ramReserved,24)
	RVECENT(ramReserved,25)
	RVECENT(ramReserved,26)
	RVECENT(ramReserved,27)
	RVECENT(ramReserved,28)
	RVECENT(ramReserved,29)
	RVECENT(ramReserved,30)
	RVECENT(ramReserved,31)
	RVECENT(ramReserved,32)
	RVECENT(ramReserved,33)
	RVECENT(ramReserved,34)
	RVECENT(ramReserved,35)
	RVECENT(ramReserved,36)
	RVECENT(ramReserved,37)
	RVECENT(ramReserved,38)
	RVECENT(ramReserved,39)
	RVECENT(ramReserved,40)
	RVECENT(ramReserved,41)
	RVECENT(ramReserved,42)
	RVECENT(ramReserved,43)
	RVECENT(ramReserved,44)
	RVECENT(ramReserved,45)
	RVECENT(ramReserved,46)
	RVECENT(ramReserved,47)
  XVECENT(ramExcHandle_general, 0x180) 
	RVECENT(ramReserved,49)
	RVECENT(ramReserved,50)
	RVECENT(ramReserved,51)
	RVECENT(ramReserved,52)
	RVECENT(ramReserved,53)
	RVECENT(ramReserved,54)
	RVECENT(ramReserved,55)
	RVECENT(ramReserved,56)
	RVECENT(ramReserved,57)
	RVECENT(ramReserved,58)
	RVECENT(ramReserved,59)
	RVECENT(ramReserved,60)
	RVECENT(ramReserved,61)
	RVECENT(ramReserved,62)
	RVECENT(ramReserved,63)
	RVECENT(ramReserved,64)
	RVECENT(ramReserved,65)
	RVECENT(ramReserved,66)
	RVECENT(ramReserved,67)
	RVECENT(ramReserved,68)
	RVECENT(ramReserved,69)
	RVECENT(ramReserved,70)
	RVECENT(ramReserved,71)
	RVECENT(ramReserved,72)
	RVECENT(ramReserved,73)
	RVECENT(ramReserved,74)
	RVECENT(ramReserved,75)
	RVECENT(ramReserved,76)
	RVECENT(ramReserved,77)
	RVECENT(ramReserved,78)
	RVECENT(ramReserved,79)
	RVECENT(ramReserved,80)
	RVECENT(ramReserved,81)
	RVECENT(ramReserved,82)
	RVECENT(ramReserved,83)
	RVECENT(ramReserved,84)
	RVECENT(ramReserved,85)
	RVECENT(ramReserved,86)
	RVECENT(ramReserved,87)
	RVECENT(ramReserved,88)
	RVECENT(ramReserved,89)
	RVECENT(ramReserved,90)
	RVECENT(ramReserved,91)
	RVECENT(ramReserved,92)
	RVECENT(ramReserved,93)
	RVECENT(ramReserved,94)
	RVECENT(ramReserved,95)
	RVECENT(ramReserved,96)
	RVECENT(ramReserved,97)
	RVECENT(ramReserved,98)
	RVECENT(ramReserved,99)
	RVECENT(ramReserved,100)
	RVECENT(ramReserved,101)
	RVECENT(ramReserved,102)
	RVECENT(ramReserved,103)
	RVECENT(ramReserved,104)
	RVECENT(ramReserved,105)
	RVECENT(ramReserved,106)
	RVECENT(ramReserved,107)
	RVECENT(ramReserved,108)
	RVECENT(ramReserved,109)
	RVECENT(ramReserved,110)
	RVECENT(ramReserved,111)
	RVECENT(ramReserved,112)
	RVECENT(ramReserved,113)
	RVECENT(ramReserved,114)
	RVECENT(ramReserved,115)
	RVECENT(ramReserved,116)
	RVECENT(ramReserved,116)
	RVECENT(ramReserved,118)
	RVECENT(ramReserved,119)
	RVECENT(ramReserved,120)
	RVECENT(ramReserved,121)
	RVECENT(ramReserved,122)
	RVECENT(ramReserved,123)
	RVECENT(ramReserved,124)
	RVECENT(ramReserved,125)
	RVECENT(ramReserved,126)
	RVECENT(ramReserved,127)
.global __exception_vector_end
__exception_vector_end:
/* table end */
	/*
	 * We hope there are no more reserved vectors!
	 * 128 * 8 == 1024 == 0x400
	 * so this is address R_VEC+0x400 == 0xbfc00400
	 */

