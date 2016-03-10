  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vxorps %xmm1, %xmm1, %xmm13    #  1     0     4      OPC=vxorps_xmm_xmm_xmm     
  pmovzxwd %xmm13, %xmm2         #  2     0x4   6      OPC=pmovzxwd_xmm_xmm       
  vcvtps2dq %xmm2, %xmm7         #  3     0xa   4      OPC=vcvtps2dq_xmm_xmm      
  vunpckhpd %xmm7, %xmm2, %xmm4  #  4     0xe   4      OPC=vunpckhpd_xmm_xmm_xmm  
  pmovzxbq %xmm4, %xmm1          #  5     0x12  5      OPC=pmovzxbq_xmm_xmm       
  retq                           #  6     0x17  1      OPC=retq                   
                                                                                  
.size target, .-target
