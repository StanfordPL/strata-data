  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklpd %xmm10, %xmm10, %xmm15                #  2     0x5   5      OPC=vunpcklpd_xmm_xmm_xmm  
  movd %ebx, %xmm11                               #  3     0xa   5      OPC=movd_xmm_r32           
  vunpcklps %xmm11, %xmm15, %xmm5                 #  4     0xf   5      OPC=vunpcklps_xmm_xmm_xmm  
  punpcklqdq %xmm5, %xmm1                         #  5     0x14  4      OPC=punpcklqdq_xmm_xmm     
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
