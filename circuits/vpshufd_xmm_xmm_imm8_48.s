  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vbroadcastss %xmm2, %ymm13      #  1     0    5      OPC=vbroadcastss_ymm_xmm   
  vunpckhps %xmm13, %xmm2, %xmm1  #  2     0x5  5      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm13, %xmm1             #  3     0xa  5      OPC=movsd_xmm_xmm          
  retq                            #  4     0xf  1      OPC=retq                   
                                                                                  
.size target, .-target
