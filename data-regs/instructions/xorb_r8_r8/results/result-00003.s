  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movsbq %cl, %rbp  #  1     0     4      OPC=movsbq_r64_r8  
  movsbl %bl, %r8d  #  2     0x4   4      OPC=movsbl_r32_r8  
  xorl %ebp, %r8d   #  3     0x8   3      OPC=xorl_r32_r32   
  setbe %bh         #  4     0xb   3      OPC=setbe_rh       
  xchgw %r8w, %bx   #  5     0xe   4      OPC=xchgw_r16_r16  
  retq              #  6     0x12  1      OPC=retq           
                                                             
.size target, .-target
