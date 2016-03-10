  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vdivpd %xmm1, %xmm1, %xmm9         #  1     0     4      OPC=vdivpd_xmm_xmm_xmm  
  cvtss2sd %xmm1, %xmm1              #  2     0x4   4      OPC=cvtss2sd_xmm_xmm    
  unpckhps %xmm9, %xmm1              #  3     0x8   4      OPC=unpckhps_xmm_xmm    
  callq .move_128_064_xmm1_r12_r13   #  4     0xc   5      OPC=callq_label         
  callq .move_032_064_r12d_r13d_rbx  #  5     0x11  5      OPC=callq_label         
  retq                               #  6     0x16  1      OPC=retq                
                                                                                   
.size target, .-target
