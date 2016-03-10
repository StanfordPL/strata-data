  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vxorps %xmm8, %xmm8, %xmm3         #  2     0x5   5      OPC=vxorps_xmm_xmm_xmm  
  mulpd %xmm2, %xmm8                 #  3     0xa   5      OPC=mulpd_xmm_xmm       
  vmovq %xmm8, %xmm8                 #  4     0xf   5      OPC=vmovq_xmm_xmm       
  haddpd %xmm8, %xmm3                #  5     0x14  5      OPC=haddpd_xmm_xmm      
  movdqa %xmm3, %xmm1                #  6     0x19  4      OPC=movdqa_xmm_xmm      
  retq                               #  7     0x1d  1      OPC=retq                
                                                                                   
.size target, .-target
