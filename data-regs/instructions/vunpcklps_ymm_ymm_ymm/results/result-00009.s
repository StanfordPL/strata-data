  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovddup %ymm3, %ymm8          #  1     0     4      OPC=vmovddup_ymm_ymm       
  vminps %ymm2, %ymm2, %ymm15    #  2     0x4   4      OPC=vminps_ymm_ymm_ymm     
  vpbroadcastq %xmm2, %ymm1      #  3     0x8   5      OPC=vpbroadcastq_ymm_xmm   
  vmovddup %ymm15, %ymm5         #  4     0xd   5      OPC=vmovddup_ymm_ymm       
  movaps %xmm1, %xmm5            #  5     0x12  3      OPC=movaps_xmm_xmm         
  vunpckhps %ymm8, %ymm5, %ymm1  #  6     0x15  5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                           #  7     0x1a  1      OPC=retq                   
                                                                                  
.size target, .-target
