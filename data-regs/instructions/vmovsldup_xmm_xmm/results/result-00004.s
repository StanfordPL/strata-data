  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm2, %xmm7          #  2     0x5   5      OPC=vbroadcastss_xmm_xmm   
  vbroadcastss %xmm9, %xmm2          #  3     0xa   5      OPC=vbroadcastss_xmm_xmm   
  vmovupd %xmm7, %xmm0               #  4     0xf   4      OPC=vmovupd_xmm_xmm        
  vunpcklpd %xmm2, %xmm0, %xmm1      #  5     0x13  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                               #  6     0x17  1      OPC=retq                   
                                                                                      
.size target, .-target
