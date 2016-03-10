  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  punpcklqdq %xmm10, %xmm3             #  2     0x5   5      OPC=punpcklqdq_xmm_xmm     
  vunpckhpd %ymm3, %ymm2, %ymm1        #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movsd %xmm2, %xmm1                   #  4     0xe   4      OPC=movsd_xmm_xmm          
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
