  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode               
.target:             #        0     0      OPC=<label>          
  popcntw %cx, %r8w  #  1     0     6      OPC=popcntw_r16_r16  
  movw %bx, %r9w     #  2     0x6   4      OPC=movw_r16_r16     
  adcw %cx, %bx      #  3     0xa   3      OPC=adcw_r16_r16     
  movswq %r9w, %rcx  #  4     0xd   4      OPC=movswq_r64_r16   
  retq               #  5     0x11  1      OPC=retq             
                                                                
.size target, .-target
