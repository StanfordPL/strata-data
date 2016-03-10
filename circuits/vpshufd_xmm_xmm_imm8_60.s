  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vbroadcastss %xmm2, %xmm9       #  1     0     5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %xmm9, %xmm2, %xmm0   #  2     0x5   5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm0, %xmm1      #  3     0xa   4      OPC=vmovsd_xmm_xmm_xmm     
  vunpckhps %ymm1, %ymm9, %ymm11  #  4     0xe   4      OPC=vunpckhps_ymm_ymm_ymm  
  movsd %xmm11, %xmm1             #  5     0x12  5      OPC=movsd_xmm_xmm          
  retq                            #  6     0x17  1      OPC=retq                   
                                                                                   
.size target, .-target
