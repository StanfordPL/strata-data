  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x5   5      OPC=callq_label         
  movq %xmm11, %xmm7                   #  3     0xa   5      OPC=movq_xmm_xmm        
  vmulsd %xmm7, %xmm13, %xmm11         #  4     0xf   4      OPC=vmulsd_xmm_xmm_xmm  
  haddpd %xmm2, %xmm11                 #  5     0x13  5      OPC=haddpd_xmm_xmm      
  movddup %xmm11, %xmm1                #  6     0x18  5      OPC=movddup_xmm_xmm     
  retq                                 #  7     0x1d  1      OPC=retq                
                                                                                     
.size target, .-target
