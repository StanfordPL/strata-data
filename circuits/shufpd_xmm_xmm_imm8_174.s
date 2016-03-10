  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label         
  vmovddup %xmm1, %xmm2             #  2     0x5   4      OPC=vmovddup_xmm_xmm    
  vmovdqu %ymm2, %ymm11             #  3     0x9   4      OPC=vmovdqu_ymm_ymm     
  vminss %xmm11, %xmm2, %xmm11      #  4     0xd   5      OPC=vminss_xmm_xmm_xmm  
  callq .move_064_128_r10_r11_xmm1  #  5     0x12  5      OPC=callq_label         
  movsd %xmm11, %xmm1               #  6     0x17  5      OPC=movsd_xmm_xmm       
  retq                              #  7     0x1c  1      OPC=retq                
                                                                                  
.size target, .-target
