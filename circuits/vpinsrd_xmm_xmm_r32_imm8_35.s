  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm9, %ymm1          #  2     0x5   5      OPC=vbroadcastss_ymm_xmm   
  vmovdqu %xmm1, %xmm6               #  3     0xa   4      OPC=vmovdqu_xmm_xmm        
  movd %ebx, %xmm5                   #  4     0xe   4      OPC=movd_xmm_r32           
  punpckldq %xmm5, %xmm6             #  5     0x12  4      OPC=punpckldq_xmm_xmm      
  vunpcklpd %xmm6, %xmm2, %xmm1      #  6     0x16  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                               #  7     0x1a  1      OPC=retq                   
                                                                                      
.size target, .-target
