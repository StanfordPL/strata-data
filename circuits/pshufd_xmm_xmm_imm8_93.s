  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  movshdup %xmm12, %xmm1               #  2     0x5   5      OPC=movshdup_xmm_xmm       
  vunpcklpd %xmm1, %xmm13, %xmm8       #  3     0xa   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovss %xmm1, %xmm8, %xmm6           #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm     
  movapd %xmm6, %xmm1                  #  5     0x12  4      OPC=movapd_xmm_xmm         
  retq                                 #  6     0x16  1      OPC=retq                   
                                                                                        
.size target, .-target
