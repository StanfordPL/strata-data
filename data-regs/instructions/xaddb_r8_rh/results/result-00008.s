  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movzbl %ah, %edx  #  1     0     3      OPC=movzbl_r32_rh  
  movsbq %dl, %r15  #  2     0x3   4      OPC=movsbq_r64_r8  
  movb %bl, %ah     #  3     0x7   2      OPC=movb_rh_r8     
  xorq %rdx, %r15   #  4     0x9   3      OPC=xorq_r64_r64   
  setc %bh          #  5     0xc   3      OPC=setc_rh        
  adcb %bl, %dl     #  6     0xf   2      OPC=adcb_r8_r8     
  xchgw %dx, %bx    #  7     0x11  3      OPC=xchgw_r16_r16  
  retq              #  8     0x14  1      OPC=retq           
                                                             
.size target, .-target
