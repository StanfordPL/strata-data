  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vcvtps2pd %xmm1, %ymm5  #  1     0    4      OPC=vcvtps2pd_ymm_xmm  
  vmovmskpd %ymm5, %rbx   #  2     0x4  4      OPC=vmovmskpd_r64_ymm  
  retq                    #  3     0x8  1      OPC=retq               
                                                                      
.size target, .-target
