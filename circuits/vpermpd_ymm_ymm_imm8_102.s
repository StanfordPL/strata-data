  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vmovsd %xmm13, %xmm12, %xmm10         #  2     0x5   5      OPC=vmovsd_xmm_xmm_xmm  
  vmovdqu %xmm10, %xmm11                #  3     0xa   5      OPC=vmovdqu_xmm_xmm     
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xf   5      OPC=callq_label         
  retq                                  #  5     0x14  1      OPC=retq                
                                                                                      
.size target, .-target
