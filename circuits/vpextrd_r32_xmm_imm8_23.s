  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  vmovaps %xmm1, %xmm7                          #  1     0     4      OPC=vmovaps_xmm_xmm  
  vmovdqu %ymm7, %ymm3                          #  2     0x4   4      OPC=vmovdqu_ymm_ymm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  3     0x8   5      OPC=callq_label      
  movl %r13d, %ebx                              #  4     0xd   3      OPC=movl_r32_r32     
  retq                                          #  5     0x10  1      OPC=retq             
                                                                                           
.size target, .-target
