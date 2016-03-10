  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovups %xmm3, %xmm1                  #  1     0     4      OPC=vmovups_xmm_xmm     
  callq .move_128_64_xmm3_xmm10_xmm11   #  2     0x4   5      OPC=callq_label         
  vmovss %xmm1, %xmm3, %xmm13           #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm  
  vmaxpd %xmm3, %xmm13, %xmm11          #  4     0xd   4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x11  5      OPC=callq_label         
  movdqu %xmm2, %xmm1                   #  6     0x16  4      OPC=movdqu_xmm_xmm      
  retq                                  #  7     0x1a  1      OPC=retq                
                                                                                      
.size target, .-target
