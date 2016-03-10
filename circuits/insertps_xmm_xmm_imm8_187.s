  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  pmovsxdq %xmm1, %xmm2            #  1     0     5      OPC=pmovsxdq_xmm_xmm         
  vpunpckhqdq %xmm2, %xmm1, %xmm0  #  2     0x5   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  pmovzxdq %xmm0, %xmm6            #  3     0x9   5      OPC=pmovzxdq_xmm_xmm         
  vbroadcastsd %xmm6, %ymm6        #  4     0xe   5      OPC=vbroadcastsd_ymm_xmm     
  andnpd %xmm1, %xmm1              #  5     0x13  4      OPC=andnpd_xmm_xmm           
  unpcklpd %xmm6, %xmm1            #  6     0x17  4      OPC=unpcklpd_xmm_xmm         
  retq                             #  7     0x1b  1      OPC=retq                     
                                                                                      
.size target, .-target
