  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movsldup %xmm1, %xmm4            #  1     0     4      OPC=movsldup_xmm_xmm        
  vmovupd %xmm2, %xmm11            #  2     0x4   4      OPC=vmovupd_xmm_xmm         
  vmovshdup %ymm11, %ymm10         #  3     0x8   5      OPC=vmovshdup_ymm_ymm       
  punpckldq %xmm10, %xmm1          #  4     0xd   5      OPC=punpckldq_xmm_xmm       
  vpunpckhdq %xmm10, %xmm4, %xmm4  #  5     0x12  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpcklpd %xmm4, %xmm1            #  6     0x17  4      OPC=unpcklpd_xmm_xmm        
  retq                             #  7     0x1b  1      OPC=retq                    
                                                                                     
.size target, .-target
