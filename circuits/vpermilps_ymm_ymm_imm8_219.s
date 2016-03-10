  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovddup %ymm2, %ymm3           #  1     0     4      OPC=vmovddup_ymm_ymm        
  vsubpd %ymm2, %ymm2, %ymm1      #  2     0x4   4      OPC=vsubpd_ymm_ymm_ymm      
  vsubps %ymm1, %ymm2, %ymm15     #  3     0x8   4      OPC=vsubps_ymm_ymm_ymm      
  maxsd %xmm15, %xmm2             #  4     0xc   5      OPC=maxsd_xmm_xmm           
  vpunpckhdq %ymm3, %ymm2, %ymm8  #  5     0x11  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %ymm2, %ymm8, %ymm1  #  6     0x15  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                            #  7     0x19  1      OPC=retq                    
                                                                                    
.size target, .-target
