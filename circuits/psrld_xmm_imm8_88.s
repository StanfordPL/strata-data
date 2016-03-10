  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vrcpss %xmm1, %xmm1, %xmm7    #  1     0     4      OPC=vrcpss_xmm_xmm_xmm    
  vsqrtss %xmm1, %xmm1, %xmm4   #  2     0x4   4      OPC=vsqrtss_xmm_xmm_xmm   
  vmovlhps %xmm4, %xmm7, %xmm6  #  3     0x8   4      OPC=vmovlhps_xmm_xmm_xmm  
  pxor %xmm1, %xmm6             #  4     0xc   4      OPC=pxor_xmm_xmm          
  vmovshdup %ymm6, %ymm14       #  5     0x10  4      OPC=vmovshdup_ymm_ymm     
  movddup %xmm14, %xmm1         #  6     0x14  5      OPC=movddup_xmm_xmm       
  retq                          #  7     0x19  1      OPC=retq                  
                                                                                
.size target, .-target
