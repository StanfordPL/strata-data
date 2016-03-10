  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm2, %xmm2, %xmm13  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vbroadcastsd %xmm13, %ymm9        #  2     0x4  5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm9, %ymm2, %ymm1   #  3     0x9  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
