  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                 
.target:                      #        0     0      OPC=<label>            
  sqrtps %xmm1, %xmm6         #  1     0     3      OPC=sqrtps_xmm_xmm     
  vcvtps2pd %xmm6, %ymm8      #  2     0x3   4      OPC=vcvtps2pd_ymm_xmm  
  vorpd %ymm8, %ymm8, %ymm10  #  3     0x7   5      OPC=vorpd_ymm_ymm_ymm  
  vmovmskpd %ymm10, %rbx      #  4     0xc   5      OPC=vmovmskpd_r64_ymm  
  retq                        #  5     0x11  1      OPC=retq               
                                                                           
.size target, .-target
