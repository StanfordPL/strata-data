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
  pmovzxdq %xmm10, %xmm13                         #  3     0x7   6      OPC=pmovzxdq_xmm_xmm  
  movshdup %xmm13, %xmm3                          #  4     0xd   5      OPC=movshdup_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9                  #  5     0x12  5      OPC=callq_label       
  callq .move_byte_15_of_ymm1_to_r8b              #  6     0x17  5      OPC=callq_label       
  cmovbeq %r8, %rbx                               #  7     0x1c  4      OPC=cmovbeq_r64_r64   
  retq                                            #  8     0x20  1      OPC=retq              
                                                                                              
.size target, .-target
