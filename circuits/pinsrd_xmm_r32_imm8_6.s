  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm12                              #  1     0     4      OPC=vmovd_xmm_r32          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vunpcklps %xmm11, %xmm12, %xmm5                 #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm  
  punpcklqdq %xmm5, %xmm1                         #  4     0xe   4      OPC=punpcklqdq_xmm_xmm     
  retq                                            #  5     0x12  1      OPC=retq                   
                                                                                                   
.size target, .-target
