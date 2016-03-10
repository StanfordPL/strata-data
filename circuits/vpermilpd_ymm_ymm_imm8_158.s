  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vmovdqa %ymm2, %ymm12           #  1     0    4      OPC=vmovdqa_ymm_ymm        
  vunpckhpd %ymm12, %ymm2, %ymm1  #  2     0x4  5      OPC=vunpckhpd_ymm_ymm_ymm  
  movapd %xmm2, %xmm1             #  3     0x9  4      OPC=movapd_xmm_xmm         
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
