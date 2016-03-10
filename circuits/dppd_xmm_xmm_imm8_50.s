  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmulpd %xmm2, %xmm1, %xmm2            #  1     0     4      OPC=vmulpd_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  movdqa %xmm11, %xmm1                  #  3     0x9   5      OPC=movdqa_xmm_xmm      
  haddpd %xmm2, %xmm1                   #  4     0xe   4      OPC=haddpd_xmm_xmm      
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target
