  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  movaps %xmm1, %xmm3      #  1     0    3      OPC=movaps_xmm_xmm     
  vcvtps2pd %xmm3, %ymm10  #  2     0x3  4      OPC=vcvtps2pd_ymm_xmm  
  vmovmskpd %ymm10, %rbx   #  3     0x7  5      OPC=vmovmskpd_r64_ymm  
  retq                     #  4     0xc  1      OPC=retq               
                                                                       
.size target, .-target
