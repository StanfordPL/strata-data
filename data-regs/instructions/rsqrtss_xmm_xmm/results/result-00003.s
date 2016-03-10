  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm1, %xmm2, %xmm13  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vrsqrtps %ymm13, %ymm3            #  2     0x4   5      OPC=vrsqrtps_ymm_ymm         
  vmovq %xmm3, %xmm7                #  3     0x9   4      OPC=vmovq_xmm_xmm            
  vmovss %xmm7, %xmm1, %xmm9        #  4     0xd   4      OPC=vmovss_xmm_xmm_xmm       
  movss %xmm9, %xmm1                #  5     0x11  5      OPC=movss_xmm_xmm            
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target
