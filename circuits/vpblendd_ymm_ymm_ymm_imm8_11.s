  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm1          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %xmm3, %xmm1, %xmm6  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movq %xmm1, %xmm2               #  3     0x8   4      OPC=movq_xmm_xmm            
  vorps %ymm6, %ymm2, %ymm1       #  4     0xc   4      OPC=vorps_ymm_ymm_ymm       
  movsd %xmm3, %xmm1              #  5     0x10  4      OPC=movsd_xmm_xmm           
  retq                            #  6     0x14  1      OPC=retq                    
                                                                                    
.size target, .-target
