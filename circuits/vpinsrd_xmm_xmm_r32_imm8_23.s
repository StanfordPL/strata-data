  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  movdqa %xmm10, %xmm11                #  2     0x5   5      OPC=movdqa_xmm_xmm           
  vmovd %ebx, %xmm10                   #  3     0xa   4      OPC=vmovd_xmm_r32            
  vorps %xmm10, %xmm10, %xmm7          #  4     0xe   5      OPC=vorps_xmm_xmm_xmm        
  vmovddup %ymm7, %ymm5                #  5     0x13  4      OPC=vmovddup_ymm_ymm         
  vunpckhps %xmm5, %xmm2, %xmm1        #  6     0x17  4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm1, %xmm11, %xmm1     #  7     0x1b  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                 #  8     0x1f  1      OPC=retq                     
                                                                                          
.size target, .-target
