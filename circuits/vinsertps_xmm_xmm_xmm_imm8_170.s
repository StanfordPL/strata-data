  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vunpckhpd %xmm1, %xmm3, %xmm10  #  1     0     4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovddup %xmm2, %xmm1           #  2     0x4   4      OPC=vmovddup_xmm_xmm       
  unpcklps %xmm10, %xmm1          #  3     0x8   4      OPC=unpcklps_xmm_xmm       
  pmovzxdq %xmm1, %xmm1           #  4     0xc   5      OPC=pmovzxdq_xmm_xmm       
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
