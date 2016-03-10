  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmovq %xmm12, %xmm4                  #  2     0x5   5      OPC=vmovq_xmm_xmm          
  vunpcklpd %ymm4, %ymm4, %ymm5        #  3     0xa   4      OPC=vunpcklpd_ymm_ymm_ymm  
  punpcklqdq %xmm5, %xmm1              #  4     0xe   4      OPC=punpcklqdq_xmm_xmm     
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
