  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vunpcklps %xmm2, %xmm2, %xmm6   #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckhdq %xmm6, %xmm2, %xmm9  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovupd %ymm6, %ymm12           #  3     0x8   4      OPC=vmovupd_ymm_ymm         
  movss %xmm9, %xmm12             #  4     0xc   5      OPC=movss_xmm_xmm           
  movdqa %xmm12, %xmm1            #  5     0x11  5      OPC=movdqa_xmm_xmm          
  retq                            #  6     0x16  1      OPC=retq                    
                                                                                    
.size target, .-target
