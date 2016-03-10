  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovshdup %ymm2, %ymm10          #  1     0     4      OPC=vmovshdup_ymm_ymm        
  vunpcklpd %ymm2, %ymm10, %ymm1   #  2     0x4   4      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm1, %ymm2, %ymm1  #  3     0x8   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  unpckhpd %xmm1, %xmm1            #  4     0xc   4      OPC=unpckhpd_xmm_xmm         
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
