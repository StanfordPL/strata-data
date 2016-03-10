  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm3_r10_r11  #  1     0     5      OPC=callq_label         
  movd %r10d, %xmm0                 #  2     0x5   5      OPC=movd_xmm_r32        
  vmovaps %xmm2, %xmm1              #  3     0xa   4      OPC=vmovaps_xmm_xmm     
  punpcklqdq %xmm0, %xmm1           #  4     0xe   4      OPC=punpcklqdq_xmm_xmm  
  retq                              #  5     0x12  1      OPC=retq                
                                                                                  
.size target, .-target
