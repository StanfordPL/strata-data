  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  vmovups %xmm1, %xmm3               #  1     0     4      OPC=vmovups_xmm_xmm    
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x4   5      OPC=callq_label        
  vpmovzxdq %xmm9, %ymm14            #  3     0x9   5      OPC=vpmovzxdq_ymm_xmm  
  vmovd %xmm14, %ebx                 #  4     0xe   4      OPC=vmovd_r32_xmm      
  retq                               #  5     0x12  1      OPC=retq               
                                                                                  
.size target, .-target
