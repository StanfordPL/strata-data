  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vmovshdup %xmm2, %xmm9         #  1     0     4      OPC=vmovshdup_xmm_xmm     
  vpmovzxwq %xmm2, %ymm15        #  2     0x4   5      OPC=vpmovzxwq_ymm_xmm     
  vandnps %xmm9, %xmm15, %xmm4   #  3     0x9   5      OPC=vandnps_xmm_xmm_xmm   
  vmovhlps %xmm2, %xmm4, %xmm14  #  4     0xe   4      OPC=vmovhlps_xmm_xmm_xmm  
  unpcklpd %xmm14, %xmm1         #  5     0x12  5      OPC=unpcklpd_xmm_xmm      
  retq                           #  6     0x17  1      OPC=retq                  
                                                                                 
.size target, .-target
