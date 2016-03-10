  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  pmovsxbd %xmm1, %xmm8                 #  1     0     6      OPC=pmovsxbd_xmm_xmm       
  vmovq %xmm8, %xmm3                    #  2     0x6   5      OPC=vmovq_xmm_xmm          
  vunpckhpd %ymm3, %ymm3, %ymm3         #  3     0xb   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  4     0xf   5      OPC=callq_label            
  movdqa %xmm12, %xmm1                  #  5     0x14  5      OPC=movdqa_xmm_xmm         
  retq                                  #  6     0x19  1      OPC=retq                   
                                                                                         
.size target, .-target
