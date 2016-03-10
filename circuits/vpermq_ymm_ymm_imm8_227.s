  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmaxps %ymm2, %ymm2, %ymm1            #  1     0     4      OPC=vmaxps_ymm_ymm_ymm  
  punpcklqdq %xmm2, %xmm1               #  2     0x4   4      OPC=punpcklqdq_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x8   5      OPC=callq_label         
  movhlps %xmm11, %xmm1                 #  4     0xd   4      OPC=movhlps_xmm_xmm     
  retq                                  #  5     0x11  1      OPC=retq                
                                                                                      
.size target, .-target
