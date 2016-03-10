  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vbroadcastss %xmm2, %ymm7        #  1     0     5      OPC=vbroadcastss_ymm_xmm     
  vunpckhps %xmm2, %xmm7, %xmm15   #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm    
  vmovddup %xmm15, %xmm3           #  3     0x9   5      OPC=vmovddup_xmm_xmm         
  vpunpcklqdq %xmm3, %xmm3, %xmm1  #  4     0xe   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
