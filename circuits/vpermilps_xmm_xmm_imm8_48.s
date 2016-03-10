  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %ymm3        #  1     0     5      OPC=vpbroadcastd_ymm_xmm    
  movaps %xmm2, %xmm10             #  2     0x5   4      OPC=movaps_xmm_xmm          
  vpunpckhdq %xmm3, %xmm10, %xmm1  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsd %xmm3, %xmm1               #  4     0xd   4      OPC=movsd_xmm_xmm           
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
