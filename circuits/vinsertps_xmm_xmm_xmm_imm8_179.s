  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpunpckhdq %xmm3, %xmm2, %xmm1  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vxorps %xmm4, %xmm4, %xmm9      #  2     0x4   4      OPC=vxorps_xmm_xmm_xmm      
  vunpcklpd %ymm1, %ymm9, %ymm4   #  3     0x8   4      OPC=vunpcklpd_ymm_ymm_ymm   
  vmovdqa %xmm4, %xmm1            #  4     0xc   4      OPC=vmovdqa_xmm_xmm         
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
