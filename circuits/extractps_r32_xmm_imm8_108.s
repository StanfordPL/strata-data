  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode             
.target:                               #        0     0      OPC=<label>        
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label    
  movd %xmm10, %r15d                   #  2     0x5   5      OPC=movd_r32_xmm   
  movsbl %r15b, %ebx                   #  3     0xa   4      OPC=movsbl_r32_r8  
  xchgq %rbx, %r15                     #  4     0xe   3      OPC=xchgq_r64_r64  
  retq                                 #  5     0x11  1      OPC=retq           
                                                                                
.size target, .-target
