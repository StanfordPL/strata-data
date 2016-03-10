  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovss %xmm8, %xmm3, %xmm8                      #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm  
  movdqa %xmm8, %xmm6                             #  3     0xa   5      OPC=movdqa_xmm_xmm      
  vmovsd %xmm6, %xmm2, %xmm1                      #  4     0xf   4      OPC=vmovsd_xmm_xmm_xmm  
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
