  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpbroadcastq %xmm2, %ymm9        #  1     0     5      OPC=vpbroadcastq_ymm_xmm     
  vmovapd %ymm2, %ymm1             #  2     0x5   4      OPC=vmovapd_ymm_ymm          
  vpunpckhqdq %ymm1, %ymm9, %ymm1  #  3     0x9   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  punpckhqdq %xmm9, %xmm1          #  4     0xd   5      OPC=punpckhqdq_xmm_xmm       
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
