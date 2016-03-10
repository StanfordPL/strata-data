  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vsubpd %xmm1, %xmm1, %xmm9         #  1     0     4      OPC=vsubpd_xmm_xmm_xmm       
  movsd %xmm9, %xmm9                 #  2     0x4   5      OPC=movsd_xmm_xmm            
  vmovshdup %ymm9, %ymm13            #  3     0x9   5      OPC=vmovshdup_ymm_ymm        
  vpunpcklqdq %ymm13, %ymm13, %ymm4  #  4     0xe   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  cvtps2dq %xmm4, %xmm1              #  5     0x13  4      OPC=cvtps2dq_xmm_xmm         
  hsubpd %xmm1, %xmm1                #  6     0x17  4      OPC=hsubpd_xmm_xmm           
  retq                               #  7     0x1b  1      OPC=retq                     
                                                                                        
.size target, .-target
