  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vmovapd %xmm1, %xmm14               #  1     0     4      OPC=vmovapd_xmm_xmm          
  mulpd %xmm2, %xmm14                 #  2     0x4   5      OPC=mulpd_xmm_xmm            
  vpunpckhqdq %ymm14, %ymm14, %ymm10  #  3     0x9   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  addsd %xmm14, %xmm10                #  4     0xe   5      OPC=addsd_xmm_xmm            
  movddup %xmm10, %xmm8               #  5     0x13  5      OPC=movddup_xmm_xmm          
  movq %xmm8, %xmm1                   #  6     0x18  5      OPC=movq_xmm_xmm             
  retq                                #  7     0x1d  1      OPC=retq                     
                                                                                         
.size target, .-target
