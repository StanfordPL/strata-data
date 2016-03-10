  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode             
.target:           #        0     0      OPC=<label>        
  xorq %rax, %rax  #  1     0     3      OPC=xorq_r64_r64   
  shll $0x1, %eax  #  2     0x3   2      OPC=shll_r32_one   
  movb %cl, %bh    #  3     0x5   2      OPC=movb_rh_r8     
  addw %bx, %ax    #  4     0x7   3      OPC=addw_r16_r16   
  movsbw %bh, %cx  #  5     0xa   4      OPC=movsbw_r16_rh  
  adcb %cl, %bl    #  6     0xe   2      OPC=adcb_r8_r8     
  xchgw %ax, %cx   #  7     0x10  3      OPC=xchgw_r16_r16  
  retq             #  8     0x13  1      OPC=retq           
                                                            
.size target, .-target
