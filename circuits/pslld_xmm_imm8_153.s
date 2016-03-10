  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                 
.target:                               #        0    0      OPC=<label>            
  pxor %xmm13, %xmm13                  #  1     0    5      OPC=pxor_xmm_xmm       
  vcvtdq2ps %xmm13, %xmm12             #  2     0x5  5      OPC=vcvtdq2ps_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  3     0xa  5      OPC=callq_label        
  retq                                 #  4     0xf  1      OPC=retq               
                                                                                   
.size target, .-target
