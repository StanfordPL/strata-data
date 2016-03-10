  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vcvtpd2ps %ymm1, %xmm3  #  1     0    4      OPC=vcvtpd2ps_xmm_ymm  
  vmovmskps %xmm3, %rbx   #  2     0x4  4      OPC=vmovmskps_r64_xmm  
  retq                    #  3     0x8  1      OPC=retq               
                                                                      
.size target, .-target
