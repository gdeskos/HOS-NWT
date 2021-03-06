MODULE type
!
! This module defines variables types used throughout all code and may be chosen between
! double precision (DP) and single precision (SP).
! Symbols are (RP) for real types and (CP) for complex types
!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!
!    Copyright (C) 2014 - LHEEA Lab., Ecole Centrale de Nantes, UMR CNRS 6598
!
!    This program is part of HOS-NWT
!
!    HOS-NWT is free software: you can redistribute it and/or modify
!    it under the terms of the GNU General Public License as published by
!    the Free Software Foundation, either version 3 of the License, or
!    (at your option) any later version.
!
!    This program is distributed in the hope that it will be useful,
!    but WITHOUT ANY WARRANTY; without even the implied warranty of
!    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
!    GNU General Public License for more details.
!
!    You should have received a copy of the GNU General Public License
!    along with this program.  If not, see <http://www.gnu.org/licenses/>.
!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!
!
! Reals, simple or double precision
INTEGER, PARAMETER :: SP = KIND(1.0)
INTEGER, PARAMETER :: DP = KIND(1.0D0)
!
! Complexes, simple or double precision
INTEGER, PARAMETER :: SPC = KIND((1.0,1.0))
INTEGER, PARAMETER :: DPC = KIND((1.0D0,1.0D0))
!
! Current type
INTEGER, PARAMETER :: RP = DP
INTEGER, PARAMETER :: CP = DPC
!
! Definition of usual mathematical constants i, pi, 2*pi, pi/2, square root of 2
COMPLEX(CP), PARAMETER :: i     = ((0.0_rp, 1.0_rp))
REAL(RP), PARAMETER    :: PI    = 3.141592653589793238462643383279502888419_rp
REAL(RP), PARAMETER    :: g     = 9.81_rp
REAL(RP), PARAMETER    :: PIO2  = 1.570796326794896619231321691639751442098_rp
REAL(RP), PARAMETER    :: TWOPI = 6.283185307179586476925286766559005768394_rp
REAL(RP), PARAMETER    :: SQ2   = 1.414213562373095048801688724209698078569_rp
!
! For comparison of real numbers
REAL(RP), PARAMETER    :: tiny = epsilon(1.0_rp)
!
!
!
CONTAINS
!
!
!
CHARACTER(LEN=12) FUNCTION int2str(int)
!
! Converts an integer to a string
!CHARACTER(LEN=*) :: int2str
INTEGER          :: int
WRITE(int2str,'(I12)') int
int2str = TRIM(ADJUSTL(int2str))
END FUNCTION int2str
!
!
!
FUNCTION strtoint(lstr)
!
! Converts a string to an integer
CHARACTER*(*) :: lstr
INTEGER       :: result,leng,i,strtoint
!
leng   = len(lstr)
result = 0
DO i=1,leng
  IF (ichar(lstr(i:i))<58 .and.ichar(lstr(i:i))>=48) THEN 
     result = 10*result+(ichar(lstr(i:i))-48)
  ENDIF
ENDDO
strtoint = result
END FUNCTION strtoint
!
!
!
END MODULE type