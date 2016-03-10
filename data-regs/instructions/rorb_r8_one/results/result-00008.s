  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  xorw %si, %si     #  1     0     3      OPC=xorw_r16_r16     
  setnp %bh         #  2     0x3   3      OPC=setnp_rh         
  xorb %bl, %bh     #  3     0x6   2      OPC=xorb_rh_r8       
  cmovnbw %bx, %bx  #  4     0x8   4      OPC=cmovnbw_r16_r16  
  sarw $0x1, %bx    #  5     0xc   3      OPC=sarw_r16_one     
  movsbq %bl, %rdx  #  6     0xf   4      OPC=movsbq_r64_r8    
  rolb $0x1, %dl    #  7     0x13  2      OPC=rolb_r8_one      
  retq              #  8     0x15  1      OPC=retq             
                                                               
.size target, .-target
