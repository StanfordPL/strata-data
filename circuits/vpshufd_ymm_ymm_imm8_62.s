  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vunpckhpd %ymm2, %ymm2, %ymm12     #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm    
  vmovsldup %ymm2, %ymm15            #  2     0x4   4      OPC=vmovsldup_ymm_ymm        
  vpunpckldq %ymm15, %ymm12, %ymm15  #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckhqdq %ymm15, %ymm2, %ymm1   #  4     0xd   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                               #  5     0x12  1      OPC=retq                     
                                                                                        
.size target, .-target
