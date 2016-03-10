  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpmovzxwq %xmm6, %ymm4                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm        
  vpunpckhqdq %xmm1, %xmm4, %xmm0               #  3     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  phsubd %xmm5, %xmm0                           #  4     0xe   5      OPC=phsubd_xmm_xmm           
  vmovd %xmm0, %ebx                             #  5     0x13  4      OPC=vmovd_r32_xmm            
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
