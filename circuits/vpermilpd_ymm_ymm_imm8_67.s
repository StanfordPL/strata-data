  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  unpckhpd %xmm2, %xmm2   #  1     0    4      OPC=unpckhpd_xmm_xmm  
  vmovdqu %ymm2, %ymm10   #  2     0x4  4      OPC=vmovdqu_ymm_ymm   
  vmovddup %ymm10, %ymm1  #  3     0x8  5      OPC=vmovddup_ymm_ymm  
  retq                    #  4     0xd  1      OPC=retq              
                                                                     
.size target, .-target
