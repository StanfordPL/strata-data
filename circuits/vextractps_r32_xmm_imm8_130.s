  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vbroadcastsd %xmm1, %ymm9         #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  sqrtss %xmm9, %xmm1               #  2     0x5   5      OPC=sqrtss_xmm_xmm        
  callq .move_128_064_xmm1_r10_r11  #  3     0xa   5      OPC=callq_label           
  movl %r11d, %ebx                  #  4     0xf   3      OPC=movl_r32_r32          
  retq                              #  5     0x12  1      OPC=retq                  
                                                                                    
.size target, .-target
