  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  orpd %xmm3, %xmm2           #  1     0    4      OPC=orpd_xmm_xmm       
  vmovupd %ymm2, %ymm14       #  2     0x4  4      OPC=vmovupd_ymm_ymm    
  vorpd %ymm14, %ymm3, %ymm1  #  3     0x8  5      OPC=vorpd_ymm_ymm_ymm  
  retq                        #  4     0xd  1      OPC=retq               
                                                                          
.size target, .-target
