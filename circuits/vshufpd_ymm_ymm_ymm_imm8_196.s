  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm2, %ymm12     #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vmovddup %ymm3, %ymm13               #  2     0x4   4      OPC=vmovddup_ymm_ymm         
  vunpckhpd %ymm13, %ymm2, %ymm10      #  3     0x8   5      OPC=vunpckhpd_ymm_ymm_ymm    
  vmovapd %ymm10, %ymm1                #  4     0xd   5      OPC=vmovapd_ymm_ymm          
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label              
  retq                                 #  6     0x17  1      OPC=retq                     
                                                                                          
.size target, .-target
