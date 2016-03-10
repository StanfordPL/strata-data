  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vminpd %ymm3, %ymm3, %ymm0  #  1     0    4      OPC=vminpd_ymm_ymm_ymm  
  vmovupd %xmm0, %xmm6        #  2     0x4  4      OPC=vmovupd_xmm_xmm     
  vpxor %ymm6, %ymm0, %ymm1   #  3     0x8  4      OPC=vpxor_ymm_ymm_ymm   
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
