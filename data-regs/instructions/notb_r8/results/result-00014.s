  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode             
.target:             #        0     0      OPC=<label>        
  movzbq %bl, %rbx   #  1     0     4      OPC=movzbq_r64_r8  
  movsbq %bl, %r10   #  2     0x4   4      OPC=movsbq_r64_r8  
  notw %r10w         #  3     0x8   4      OPC=notw_r16       
  movzbw %r10b, %bx  #  4     0xc   5      OPC=movzbw_r16_r8  
  retq               #  5     0x11  1      OPC=retq           
                                                              
.size target, .-target
