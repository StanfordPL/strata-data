  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovupd %xmm1, %xmm4    #  1     0    4      OPC=vmovupd_xmm_xmm    
  vcvtps2pd %xmm4, %ymm0  #  2     0x4  4      OPC=vcvtps2pd_ymm_xmm  
  vmovmskpd %ymm0, %rbx   #  3     0x8  4      OPC=vmovmskpd_r64_ymm  
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
