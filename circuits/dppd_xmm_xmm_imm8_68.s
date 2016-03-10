  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vcvtss2sd %xmm1, %xmm2, %xmm0  #  1     0    4      OPC=vcvtss2sd_xmm_xmm_xmm  
  vpxor %xmm0, %xmm0, %xmm0      #  2     0x4  4      OPC=vpxor_xmm_xmm_xmm      
  cvtps2pd %xmm0, %xmm1          #  3     0x8  3      OPC=cvtps2pd_xmm_xmm       
  retq                           #  4     0xb  1      OPC=retq                   
                                                                                 
.size target, .-target
