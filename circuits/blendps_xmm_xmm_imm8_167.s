  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vpunpckhdq %xmm2, %xmm1, %xmm10      #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhps %xmm10, %xmm2, %xmm11      #  2     0x4   5      OPC=vunpckhps_xmm_xmm_xmm   
  movaps %xmm2, %xmm3                  #  3     0x9   3      OPC=movaps_xmm_xmm          
  vbroadcastsd %xmm3, %ymm10           #  4     0xc   5      OPC=vbroadcastsd_ymm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x11  5      OPC=callq_label             
  retq                                 #  6     0x16  1      OPC=retq                    
                                                                                         
.size target, .-target
