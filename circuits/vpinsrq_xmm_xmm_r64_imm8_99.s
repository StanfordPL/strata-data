  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovq %rbx, %xmm6                #  1     0     5      OPC=vmovq_xmm_r64            
  vcvttpd2dq %ymm6, %xmm13         #  2     0x5   4      OPC=vcvttpd2dq_xmm_ymm       
  vaddss %xmm13, %xmm6, %xmm1      #  3     0x9   5      OPC=vaddss_xmm_xmm_xmm       
  vpbroadcastw %xmm1, %ymm4        #  4     0xe   5      OPC=vpbroadcastw_ymm_xmm     
  punpcklqdq %xmm4, %xmm6          #  5     0x13  4      OPC=punpcklqdq_xmm_xmm       
  vpunpcklqdq %xmm6, %xmm2, %xmm1  #  6     0x17  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  7     0x1b  1      OPC=retq                     
                                                                                      
.size target, .-target
