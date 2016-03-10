  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64   
  xorb %ah, %cl    #  2     0x3  2      OPC=xorb_r8_rh     
  adcw %bx, %cx    #  3     0x5  3      OPC=adcw_r16_r16   
  xchgw %cx, %bx   #  4     0x8  3      OPC=xchgw_r16_r16  
  retq             #  5     0xb  1      OPC=retq           
                                                           
.size target, .-target
