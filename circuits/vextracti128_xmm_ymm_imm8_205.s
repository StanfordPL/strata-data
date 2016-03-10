  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vcvtdq2pd %xmm12, %xmm11              #  2     0x5   5      OPC=vcvtdq2pd_xmm_xmm   
  maxss %xmm12, %xmm11                  #  3     0xa   5      OPC=maxss_xmm_xmm       
  vdivsd %xmm11, %xmm13, %xmm11         #  4     0xf   5      OPC=vdivsd_xmm_xmm_xmm  
  vmovsd %xmm13, %xmm11, %xmm1          #  5     0x14  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                                  #  6     0x19  1      OPC=retq                
                                                                                      
.size target, .-target
