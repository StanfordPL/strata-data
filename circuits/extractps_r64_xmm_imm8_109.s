  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label    
  movq %xmm9, %r9                                 #  2     0x5   5      OPC=movq_r64_xmm   
  cmpl %r9d, %r9d                                 #  3     0xa   3      OPC=cmpl_r32_r32   
  callq .read_of_into_rbx                         #  4     0xd   5      OPC=callq_label    
  xaddl %ebx, %r9d                                #  5     0x12  4      OPC=xaddl_r32_r32  
  retq                                            #  6     0x16  1      OPC=retq           
                                                                                           
.size target, .-target
