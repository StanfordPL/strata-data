  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  movslq %ebx, %r10                               #  1     0     3      OPC=movslq_r64_r32         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label            
  movd %r10d, %xmm12                              #  3     0x8   5      OPC=movd_xmm_r32           
  vunpcklps %xmm11, %xmm12, %xmm6                 #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm  
  punpcklqdq %xmm6, %xmm1                         #  5     0x12  4      OPC=punpcklqdq_xmm_xmm     
  retq                                            #  6     0x16  1      OPC=retq                   
                                                                                                   
.size target, .-target
