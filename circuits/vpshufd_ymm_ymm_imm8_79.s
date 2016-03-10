  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vunpckhpd %ymm2, %ymm2, %ymm0     #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm    
  vmovshdup %ymm0, %ymm12           #  2     0x4  4      OPC=vmovshdup_ymm_ymm        
  vpunpcklqdq %ymm2, %ymm12, %ymm1  #  3     0x8  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  4     0xc  1      OPC=retq                     
                                                                                      
.size target, .-target
