  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  xorl %ebx, %ebx                                 #  2     0x5   2      OPC=xorl_r32_r32     
  sall $0x1, %ebx                                 #  3     0x7   2      OPC=sall_r32_one     
  movq %xmm9, %r12                                #  4     0x9   5      OPC=movq_r64_xmm     
  cmovbel %r12d, %ebx                             #  5     0xe   4      OPC=cmovbel_r32_r32  
  retq                                            #  6     0x12  1      OPC=retq             
                                                                                             
.size target, .-target
