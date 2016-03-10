  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm12_xmm13   #  1     0     5      OPC=callq_label         
  cvtss2sd %xmm12, %xmm12               #  2     0x5   5      OPC=cvtss2sd_xmm_xmm    
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0xa   5      OPC=callq_label         
  vcvttpd2dq %ymm1, %xmm13              #  4     0xf   4      OPC=vcvttpd2dq_xmm_ymm  
  movq %xmm13, %rbx                     #  5     0x13  5      OPC=movq_r64_xmm        
  retq                                  #  6     0x18  1      OPC=retq                
                                                                                      
.size target, .-target
