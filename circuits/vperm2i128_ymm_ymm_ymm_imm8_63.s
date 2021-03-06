  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovupd %ymm3, %ymm1    #  1     0    4      OPC=vmovupd_ymm_ymm    
  andnpd %xmm1, %xmm1     #  2     0x4  4      OPC=andnpd_xmm_xmm     
  cvttpd2dq %xmm1, %xmm1  #  3     0x8  4      OPC=cvttpd2dq_xmm_xmm  
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
