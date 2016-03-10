  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vaddps %xmm2, %xmm2, %xmm11       #  1     0     4      OPC=vaddps_xmm_xmm_xmm       
  vpunpckhqdq %ymm11, %ymm3, %ymm4  #  2     0x4   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vbroadcastsd %xmm11, %ymm1        #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %ymm1, %ymm2, %ymm11  #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpcklwd %ymm4, %ymm11, %ymm1   #  5     0x12  4      OPC=vpunpcklwd_ymm_ymm_ymm   
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target
