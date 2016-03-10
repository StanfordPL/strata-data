  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vcvtdq2ps %xmm1, %xmm6  #  1     0    4      OPC=vcvtdq2ps_xmm_xmm  
  vmovmskps %xmm6, %ebx   #  2     0x4  4      OPC=vmovmskps_r32_xmm  
  retq                    #  3     0x8  1      OPC=retq               
                                                                      
.size target, .-target
