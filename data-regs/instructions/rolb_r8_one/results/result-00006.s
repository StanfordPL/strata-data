  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.target:             #        0     0      OPC=<label>        
  xorq %r13, %r13    #  1     0     3      OPC=xorq_r64_r64   
  movsbl %bl, %r15d  #  2     0x3   4      OPC=movsbl_r32_r8  
  shll $0x1, %r13d   #  3     0x7   3      OPC=shll_r32_one   
  incb %r15b         #  4     0xa   3      OPC=incb_r8        
  rcll $0x1, %r15d   #  5     0xd   3      OPC=rcll_r32_one   
  adcb %bl, %bl      #  6     0x10  2      OPC=adcb_r8_r8     
  retq               #  7     0x12  1      OPC=retq           
                                                              
.size target, .-target
