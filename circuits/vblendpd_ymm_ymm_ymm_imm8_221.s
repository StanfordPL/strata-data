  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmovsd %xmm11, %xmm11, %xmm4         #  2     0x5   5      OPC=vmovsd_xmm_xmm_xmm  
  punpcklqdq %xmm4, %xmm3              #  3     0xa   4      OPC=punpcklqdq_xmm_xmm  
  vmovupd %ymm3, %ymm1                 #  4     0xe   4      OPC=vmovupd_ymm_ymm     
  retq                                 #  5     0x12  1      OPC=retq                
                                                                                     
.size target, .-target
