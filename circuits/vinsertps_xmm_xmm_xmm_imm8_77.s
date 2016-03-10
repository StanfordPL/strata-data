  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vpxor %xmm1, %xmm1, %xmm11           #  1     0     4      OPC=vpxor_xmm_xmm_xmm       
  vmovmskpd %xmm11, %eax               #  2     0x4   5      OPC=vmovmskpd_r32_xmm       
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label             
  vcvtsi2ssl %eax, %xmm10, %xmm1       #  4     0xe   4      OPC=vcvtsi2ssl_xmm_xmm_r32  
  retq                                 #  5     0x12  1      OPC=retq                    
                                                                                         
.size target, .-target
