  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  movdqu %xmm3, %xmm8                 #  1     0     5      OPC=movdqu_xmm_xmm      
  movq %xmm3, %xmm13                  #  2     0x5   5      OPC=movq_xmm_xmm        
  vmaxss %xmm13, %xmm3, %xmm9         #  3     0xa   5      OPC=vmaxss_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xf   5      OPC=callq_label         
  movupd %xmm2, %xmm1                 #  5     0x14  4      OPC=movupd_xmm_xmm      
  retq                                #  6     0x18  1      OPC=retq                
                                                                                    
.size target, .-target
