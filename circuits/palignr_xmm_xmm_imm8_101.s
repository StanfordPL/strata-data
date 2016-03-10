  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm2, %xmm1, %xmm5  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovsldup %xmm5, %xmm12          #  2     0x4   4      OPC=vmovsldup_xmm_xmm        
  vandnpd %ymm12, %ymm12, %ymm5    #  3     0x8   5      OPC=vandnpd_ymm_ymm_ymm      
  cvtdq2pd %xmm5, %xmm1            #  4     0xd   4      OPC=cvtdq2pd_xmm_xmm         
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
