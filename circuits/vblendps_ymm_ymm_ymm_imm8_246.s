  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movss %xmm2, %xmm3              #  1     0     4      OPC=movss_xmm_xmm           
  vmovupd %ymm3, %ymm1            #  2     0x4   4      OPC=vmovupd_ymm_ymm         
  vpunpckhdq %xmm2, %xmm2, %xmm9  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhps %ymm9, %ymm1, %ymm12  #  4     0xc   5      OPC=vunpckhps_ymm_ymm_ymm   
  unpcklpd %xmm12, %xmm1          #  5     0x11  5      OPC=unpcklpd_xmm_xmm        
  retq                            #  6     0x16  1      OPC=retq                    
                                                                                    
.size target, .-target
