  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vpmovzxwq %xmm1, %xmm7       #  1     0     5      OPC=vpmovzxwq_xmm_xmm     
  vpbroadcastw %xmm7, %xmm6    #  2     0x5   5      OPC=vpbroadcastw_xmm_xmm  
  vandpd %xmm7, %xmm6, %xmm12  #  3     0xa   4      OPC=vandpd_xmm_xmm_xmm    
  movd %xmm12, %ebx            #  4     0xe   5      OPC=movd_r32_xmm          
  xchgb %bh, %bh               #  5     0x13  2      OPC=xchgb_rh_rh           
  retq                         #  6     0x15  1      OPC=retq                  
                                                                               
.size target, .-target
